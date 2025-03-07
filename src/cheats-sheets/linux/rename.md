#linux 
#rename
# Rename

```bash
sudo apt-get install rename
```

```bash
rename 's/name/newName/' *.py
```

```bash
rename 's/\s+/_/g' *
```

```bash
rename 's/\.jpeg/\.jpg/' *.jpeg
```

## To Upper

```bash
rename 'y/a-z/A-Z/' *
```

## To Lower

```bash
rename 'y/A-Z/a-z/' *
```