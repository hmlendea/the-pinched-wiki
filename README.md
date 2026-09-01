# nucicraft-wiki

## Wiki Content Synchronisation

Use [scripts/synchronise_wiki_content.sh](scripts/synchronise_wiki_content.sh) to synchronise the local wiki content in [content/](content/) with the remote wiki server over SSH.

The script performs bidirectional synchronisation based on modification timestamps:
- It downloads files that are missing locally.
- It downloads files that are newer on the server than local.
- It uploads files that are missing on the server.
- It uploads files that are newer locally than on the server.
- It creates the local `content/` directory automatically when it does not exist.

The script prompts once, at the beginning, for:
- SSH hostname
- SSH port
- SSH password

Optional CLI arguments can pre-populate connection details:
- `--hostname` or `-h`
- `--port` or `-p`
- `--username`, `--user`, or `-u`

When `--username` is not supplied, the script defaults to the current local username. When `--hostname` or `--port` are omitted, the script prompts for those values. The SSH password is always prompted interactively.

Remote content path:
- `/home/${USERNAME}/db/nucicraft-wiki/data/documents/`

### Usage

```bash
chmod +x scripts/synchronise_wiki_content.sh
./scripts/synchronise_wiki_content.sh
./scripts/synchronise_wiki_content.sh --hostname wiki.example.com --port 22 --username alice
./scripts/synchronise_wiki_content.sh -h wiki.example.com -p 22 --user alice
```

### Dependencies

- `rsync`
- `sshpass`
- `ssh`
