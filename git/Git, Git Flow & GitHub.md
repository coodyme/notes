# Git

## Install

```bash
git --version

sudo apt update

sudo apt install git
```

## Commit

### Semantic Commit

- `feat`: (new feature for the user, not a new feature for build script)
- `fix`: (bug fix for the user, not a fix to a build script)
- `docs`: (changes to the documentation)
- `style`: (formatting, missing semi colons, etc; no production code change)
- `refactor`: (refactoring production code, eg. renaming a variable)
- `test`: (adding missing tests, refactoring tests; no production code change)
- `chore`: (updating grunt tasks etc; no production code change)

### Clean, Stage and Rebase

```bash
git rebase -i HEAD~3
```

```bash
git add 'file'
```

```bash
git reset -- 'file'
```

```bash
git add -i
```

### Rename

```bash
git commit -m 'message' --amend
```

### Reset

```docker
# Reset and erase modifications
git reset HEAD

```

```docker
git reset --hard HEAD

```

### Log

```bash
git log
```

```bash
git show 'bash'
```

## Branches

- Isolate code base with teams
- Work with different features
- Stage all and Commit with message `git commit -am "chore: add some thing"`

### Create

```bash
git checkout -b 'branch'
```

### List

```bash
git 'branch'
```

### Switch

```bash
git checkout 'branch'
```

```bash
git pull
git checkout --track origin/'branch'
```

### Delete

```bash
git branch -d 'branch'
```

```bash
git push origin --delete 'branch'
```

## Merging

- master > production branch
- develop > staging branch
- Unify branch history

![02 Branch-1 kopiera.png](Git,%20Git%20Flow%20&%20GitHub%2053794580a91e4beea020026ea51efa8f/02_Branch-1_kopiera.png)

### Merge

```bash
git merge 'branch'
```

## Remote

### Add

```bash
git remote add origin git@github.com:'repo'/.git
```

### List

```bash
git remote -v
```

### Push

```bash
git push -u origin 'branch'
```

### Remove

```bash
git remote rm 'branch'
```

### Clean Refs

```bash
git fetch -p origin
```

## Tag

```docker

```

# Git Flow

## Install

```bash
sudo apt update
sudo apt install git-flow
```

## Branch convention prefixes

- `master` or `main`:  branch running in production.
- `hotfix` temporary branch to fix a critical bug in production.
- `release` QA Environment, CI/CD pipelines, Code Review and Documentation. Can be used to fix bugs during release.
- `develop` Development branch to track commit history from `feature` branches.
- `feature` New features and working branch. Features are merged to `develop` when finished. ( `feature` should never interact directly with `main`.)

## Develop and Master Branches

![01 How it works (1).svg](Git,%20Git%20Flow%20&%20GitHub%2053794580a91e4beea020026ea51efa8f/01_How_it_works_(1).svg)

## Feature Branches

![02 Feature branches.svg](Git,%20Git%20Flow%20&%20GitHub%2053794580a91e4beea020026ea51efa8f/02_Feature_branches.svg)

## Release Branches

- Manually  - git checkout -b release/1.0.0
- Git Flow -

![03 Release branches.svg](Git,%20Git%20Flow%20&%20GitHub%2053794580a91e4beea020026ea51efa8f/03_Release_branches.svg)

## Hot fix Branches

![04 Hotfix branches.svg](Git,%20Git%20Flow%20&%20GitHub%2053794580a91e4beea020026ea51efa8f/04_Hotfix_branches.svg)

## Command flow

```bash
git flow init
```

### Feature

```bash
git flow feature start 'branch'
```

```bash
git flow feature finish 'branch'
```

### Release

```bash
git flow release start '0.0.0'
```

```bash
git flow release finish '0.0.0'
```

### Hot fix

```bash
git flow hotfix start 'branch'
```

```bash
git flow hotfix finish 'branch'
```

## The overall flow convention

1. A `develop` branch is created from `main` or `master`  
2. A `release` branch is created from `develop`
3. `feature` branches are created from `develop`
4. When a `feature` is complete it is merged into the `develop` branch
5. When the `release` branch is done it is merged into `develop` and `main`
6. If an issue in `main` is detected a `hotfix` branch is created from `main`
7. Once the `hotfix` is complete it is merged to both `develop` and `main`

# GitHub

### Pull Requests

- Create a merge commit - All commits from this branch will be added to the base branch via a merge commit
- Squad and merge - Squash all commits into one
- 

### GH CLI

```bash
gh repo create 'repo' --private --source=. --remote=upstream
```

### PR

```bash
gh pr create --base 'develop' --head 'feature/login' --reviewer
```

# Git Flow + GitHub PR’s

You must use Git Flow commands to work with this flow

### main

- never be touched directly (don't commit on master or main branch)
- only receives merges from develop, release and hotfix branches
- this is your production branch

### develop

- never commit to this branch directly
- this branch only receives merges from your feature and hotfix branches
- this is your development branch

### feature / support / bugfix

1. create branch from **develop** using git flow
2. add changed files to staging
3. commit your changes in **feature** branch and push to remote repository
4. now, github will detect changes between **develop** and feature branch
5. checkout to **develop**
6. create a pull request to **develop** branch via github or gh cli  (mark to close branch after merge)
    1. **important**: if you are using gitkraken, mark to delete local branch or you will need to delete manually after step 8.
7. fetch from origin (terminal or gitkraken)
8. pull origin **develop** from remote
9. **optional**: use git branch -d ‘branch’ to manually delete merged branch

### release

1. create local branch from develop
2. follow semver naming convention like 0.0.0
3. NOT NECESSARY, but you can make changes into release and commit them.
4. push to remote repository
5. create a pull request to master branch via github or gh cli
6. merge pull request and mark to delete
7. checkout to **master** and pull from remote
8. use git flow finish release command in you **release** branch 0.0.0, give a tag message and finish.
9. now, you must push **develop** to remote repository

### hotfix

1. create hotfix branch based on master (git flow hotfix start)
2. use git flow to start a new hotfix branch
3. add files to staging, commit and push to remote repository
4. create a pull request into master. **DON'T close hotfix branch here.**
5. checkout to master
6. fetch from origin
7. pull master from origin
8. now, use git flow finish hotfix command
9. and just push master and develop to remote repository