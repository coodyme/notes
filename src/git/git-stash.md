#git
#interview-question 

## What is git stash?

Is a command used to temporarily save changes that are not ready to be committed or when you need to switch to a different branch without committing the changes. It allows you to store your modifications, clean up your working directory, and return to the changes later.

- Stashing is particularly useful when you're in the middle of working on something and need to switch branches quickly, without committing unfinished changes.

- `git stash save` or `git stash push`: Saves your changes to the stash. You can provide an optional message to describe the stash.
- `git stash list`: Lists all the stashes you have created.
- `git stash apply`: Applies the most recent stash to your working directory, reapplying the changes you stashed. The stash remains in the stash stack.
- `git stash pop`: Applies the most recent stash and removes it from the stash stack.
- `git stash drop`: Discards the most recent stash from the stash stack.  
- `git stash branch <branch-name>`: Creates a new branch from a stash. It applies the stash to the new branch and removes it from the stash stack.
