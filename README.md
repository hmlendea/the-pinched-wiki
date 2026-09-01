# nucicraft-wiki

## Wiki Content Synchronisation

Use [scripts/synchronise_wiki_content.sh](scripts/synchronise_wiki_content.sh) to synchronise the local wiki content in [content/](content/) with the remote wiki server over SSH.

The script performs bidirectional synchronisation based on modification timestamps:
- It downloads files that are missing locally.
- It downloads files that are newer on the server than local.
- It uploads files that are missing on the server.
- It uploads files that are newer locally than on the server.

The script prompts once, at the beginning, for:
- SSH hostname
- SSH port
- SSH username
- SSH password

Remote content path:
- `/home/${USERNAME}/db/nucicraft-wiki/data/documents/`

### Usage

```bash
chmod +x scripts/synchronise_wiki_content.sh
./scripts/synchronise_wiki_content.sh
```

### Dependencies

- `rsync`
- `sshpass`
- `ssh`
