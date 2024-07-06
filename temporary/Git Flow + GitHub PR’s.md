You must use [[Git]] and  [[Git Flow]] commands to work properly

### main

-   never be touched directly (don't commit on master or main branch)
-   only receives merges from develop, release and hotfix branches
-   this is your production branch

### develop

-   never commit to this branch directly
-   this branch only receives merges from your feature and hotfix branches
-   this is your development branch

### feature / support / bugfix

1.  create branch from **develop** using git flow
2.  add changed files to staging
3.  commit your changes in **feature** branch and push to remote repository
4.  now, github will detect changes between **develop** and feature branch
5.  checkout to **develop**
6.  create a pull request to **develop** branch via github or gh cli (mark to close branch after merge)
    1.  **important**: if you are using gitkraken, mark to delete local branch or you will need to delete manually after step 8.
7.  fetch from origin (terminal or gitkraken)
8.  pull origin **develop** from remote
9.  **optional**: use git branch -d ‘branch’ to manually delete merged branch

### release

1.  create local branch from develop
2.  follow semver naming convention like 0.0.0
3.  NOT NECESSARY, but you can make changes into release and commit them.
4.  push to remote repository
5.  create a pull request to master branch via github or gh cli
6.  merge pull request and mark to delete
7.  checkout to **master** and pull from remote
8.  use git flow finish release command in you **release** branch 0.0.0, give a tag message and finish.
9.  now, you must push **develop** to remote repository

### hotfix

1.  create hotfix branch based on master (git flow hotfix start)
2.  use git flow to start a new hotfix branch
3.  add files to staging, commit and push to remote repository
4.  create a pull request into master. **DON'T close hotfix branch here.**
5.  checkout to master
6.  fetch from origin
7.  pull master from origin
8.  now, use git flow finish hotfix command
9.  and just push master and develop to remote repository