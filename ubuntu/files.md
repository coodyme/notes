# File management
```bash
ls : Lists files and directories.
touch <filename> : Creates an empty file or updates the last accessed date.
cp <source> <destination> : Copies files from source to destination.
mv <source> <destination> : Moves files or renames them.
rm <filename> : Deletes a file.
```

# Directory navigation
```bash
pwd : Displays the current directory path.
cd <directory> : Changes the current directory.
mkdir <dirname> : Creates a new directory.
File permissions and ownership
chmod [who][+/-][permissions] <file> : Changes file permissions.
chmod u+x <file> : Makes a file executable by its owner.
chown [user]:[group] <file> : Changes file owner and group.
```

# Searching and finding
```bash
find [directory] -name <search_pattern> : Finds files and directories.
grep <search_pattern> <file> : Searches for a pattern in files.
```

# Archiving and compression
```bash
tar -czvf <name.tar.gz> [files] : Compresses files into a tar.gz archive.
tar -xvf <name.tar.[gz|bz|xz]> [destination] : Extracts a compressed tar archive.
```

# Text editing and processing
```bash
nano [file] : Opens a file in the Nano text editor.
cat <file> : Displays the contents of a file.
less <file> : Displays the paginated content of a file.
head <file> : Shows the first few lines of a file.
tail <file> : Shows the last few lines of a file.
awk ‘{print}’ [file] : Prints every line in a file.
```