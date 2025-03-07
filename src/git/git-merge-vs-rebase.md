#git
#interview-question 

## What is the difference between Merge and Rebase

Both `git merge` and `git rebase` are used to ingrate changes from one branch into another.

## Commit History

- `git merge` creates a new merge commit that combines the changes from the source into the target

...

In summary, `git merge` integrates changes by creating a new merge commit, preserving the branch history, and resulting in a non-linear commit history.

`git rebase` rewrites the commit history by transplanting commits onto the tip of another branch, resulting in a linear commit history but discarding the original branch structure

The choice between the two depends on the desired commit history, clarity of changes, collaboration needs, and workflow preferences.