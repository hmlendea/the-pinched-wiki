#!/usr/bin/env bash

set -euo pipefail

readonly REMOTE_PATH_SUFFIX='/db/nucicraft-wiki/data/documents/'
readonly RSYNC_COMMON_OPTIONS='--archive --compress --human-readable --update'

print_error_and_exit() {
    local ERROR_MESSAGE="${1}"
    echo "[ERROR] ${ERROR_MESSAGE}" >&2
    exit 1
}

validate_dependencies() {
    if ! command -v rsync >/dev/null 2>&1; then
        print_error_and_exit 'The command rsync is not installed.'
    fi

    if ! command -v sshpass >/dev/null 2>&1; then
        print_error_and_exit 'The command sshpass is not installed. Install it and re-run this script.'
    fi
}

prompt_connection_details() {
    read -r -p 'SSH hostname: ' SSH_HOSTNAME
    read -r -p 'SSH port: ' SSH_PORT
    read -r -p 'SSH username: ' SSH_USERNAME
    read -r -s -p 'SSH password: ' SSH_PASSWORD
    echo

    if [[ -z "${SSH_HOSTNAME}" ]]; then
        print_error_and_exit 'Hostname cannot be empty.'
    fi

    if [[ -z "${SSH_PORT}" ]]; then
        print_error_and_exit 'Port cannot be empty.'
    fi

    if [[ ! "${SSH_PORT}" =~ ^[0-9]+$ ]]; then
        print_error_and_exit 'Port must be numeric.'
    fi

    if [[ -z "${SSH_USERNAME}" ]]; then
        print_error_and_exit 'Username cannot be empty.'
    fi

    if [[ -z "${SSH_PASSWORD}" ]]; then
        print_error_and_exit 'Password cannot be empty.'
    fi
}

determine_paths() {
    SCRIPT_DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
    REPOSITORY_ROOT_DIRECTORY="$(cd "${SCRIPT_DIRECTORY}/.." && pwd)"
    LOCAL_CONTENT_DIRECTORY="${REPOSITORY_ROOT_DIRECTORY}/content"
    REMOTE_CONTENT_DIRECTORY="/home/${SSH_USERNAME}${REMOTE_PATH_SUFFIX}"
}

validate_local_content_directory() {
    if [[ ! -d "${LOCAL_CONTENT_DIRECTORY}" ]]; then
        print_error_and_exit "Local directory does not exist: ${LOCAL_CONTENT_DIRECTORY}"
    fi
}

create_remote_directory() {
    SSHPASS="${SSH_PASSWORD}" sshpass -e ssh \
        -p "${SSH_PORT}" \
        -o StrictHostKeyChecking=accept-new \
        "${SSH_USERNAME}@${SSH_HOSTNAME}" \
        "mkdir -p \"${REMOTE_CONTENT_DIRECTORY}\""
}

download_remote_newer_and_missing_files() {
    SSHPASS="${SSH_PASSWORD}" sshpass -e rsync ${RSYNC_COMMON_OPTIONS} \
        -e "ssh -p ${SSH_PORT} -o StrictHostKeyChecking=accept-new" \
        "${SSH_USERNAME}@${SSH_HOSTNAME}:${REMOTE_CONTENT_DIRECTORY}" \
        "${LOCAL_CONTENT_DIRECTORY}/"
}

upload_local_newer_and_missing_files() {
    SSHPASS="${SSH_PASSWORD}" sshpass -e rsync ${RSYNC_COMMON_OPTIONS} \
        -e "ssh -p ${SSH_PORT} -o StrictHostKeyChecking=accept-new" \
        "${LOCAL_CONTENT_DIRECTORY}/" \
        "${SSH_USERNAME}@${SSH_HOSTNAME}:${REMOTE_CONTENT_DIRECTORY}"
}

main() {
    local SSH_HOSTNAME=''
    local SSH_PORT=''
    local SSH_USERNAME=''
    local SSH_PASSWORD=''
    local SCRIPT_DIRECTORY=''
    local REPOSITORY_ROOT_DIRECTORY=''
    local LOCAL_CONTENT_DIRECTORY=''
    local REMOTE_CONTENT_DIRECTORY=''

    validate_dependencies
    prompt_connection_details
    determine_paths
    validate_local_content_directory

    echo 'Preparing remote wiki directory.'
    create_remote_directory

    echo 'Synchronising remote changes to local content.'
    download_remote_newer_and_missing_files

    echo 'Synchronising local changes to the remote wiki.'
    upload_local_newer_and_missing_files

    echo 'Synchronisation complete.'
}

main "$@"
