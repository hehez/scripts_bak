[_metadata_:author]:    - ""
[_metadata_:date]:      - "10/28/2019"

# Visual Studio Code Dev Setup
## Visual Studio Code version
```bash
1.39.2
```

## Installing remote SSH
### Generage SSH key
Generate SSH key in `.ssh` directory,
```bash
ssh-keygen
```

### Copy `id_rsa.pub` to remote OS `.ssh` directory
### SSH into remote OS, add `id_ras.pub` into `authorized_keys`
Connect to remote OS with password
```bash
ssh <username>@ip -p port
```

Copy key to `authorized_keys`, (alternately use `ssh-copy-id` to append local public key to remote ` .ssh/authorized_keys `)
```bash
cat id_rsa.pub >> authorized_keys
```

Try command line, and no longer password
```bash
ssh <username>@ip -p port -i id_rsa
```

## Setup vscode remote ssh config
```bash
Host <name>
HostName <remote ip>
User <username>
Port <port>
IdentityFile <path_to_local_id_src>
```

Login remote OS via vscode w/o passowrd