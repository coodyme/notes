#git
#cli 
#gh

## Create a Pull Request

```bash
gh pr create --base 'develop' --head 'feature/login' --reviewer --label
```

## Create a Repository

```bash
gh repo create 'repo' --private --source=. --remote=upstream
```

## Search for repositories]

```bash
gh search repos <query> [flags]
```

Example using flags. Search for repositories owned by

```bash
gh search repos feature-flags --owner=eteg
```

More flags can be found here: https://cli.github.com/manual/gh_search_repos