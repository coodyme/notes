#linux 
#find

# Find in path . "dir" where type is dir (d) and prune

```bash

find . -name "node_modules" -type d -prune | xargs du -hcs
```

```bash
find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
```

# Count lines of code

```bash
find . -name '*.js' | xargs wc -l
```