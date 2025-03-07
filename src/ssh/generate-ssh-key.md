## How to generate a SSH Key 

```bash
ssh-keygen -t rsa -b 4096 -C "<comment (email)>" -f "<filename>"
```

```bash
eval $(ssh-agent -s)
ssh-add "<directory to private SSH key>"
```

```bash
ssh-keygen -p -f "</path/to/ssh_key">
```

```bash
# Install xclip
sudo apt-get install xclip

xclip -sel clip < "<path to ssh key>"

# Example
xclip -sel clip < ~/.ssh/id_rsa.pub

# Copy to a remote host
ssh-copy-id "<username@remote_host>"
```

```bash
git config core.sshCommand "ssh -o IdentitiesOnly=yes -i ~/.ssh/private-key-filename-for-this-repository -F /dev/null"
```

## How to add ssh ket to apple keychain

```bash
ssh-add -K ~/.ssh/id_rsa
```

## How to remove ssh key from apple keychain

```bash
