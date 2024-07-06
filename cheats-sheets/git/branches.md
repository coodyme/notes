#git

## Push Branch

```bash
# If local branch doest not exist on the remote
git push -u origin branch-name

# If exists
git push
```

## Remote Branches

```bash
# List your current remote connections
git remote -v

# Remove remote branches
git remote rm <remote-name>
```

## Clean Remote Refs

```bash
git fetch -p origin
```