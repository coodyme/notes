#linux 
#general
# General Commands

# Count files

```bash
ls | wc -l
```

# Search inside files

```bash
grep -rnw '/path' -e 'pattern'
```

For example: Search `'CRETE TABLE rle'` in `'/home/augusto/projects'`

```bash
sudo grep -rnw '/home/augusto/projects' -e 'CREATE TABLE rle'
```

#  Locate the paths of executable files

```bash
which code
```

# System

Shutdown system

```bash
sudo shutdown -h now
```

# Process

List process `PID` by `PORT`

```bash
sudo lsof -t -i:"PORT" 
```

```bash
sudo lsof -t -i:5500
```

Kill process by `PID`

```bash
sudo kill "PID"
```

```bash
sudo kill 23202
```

Find process 

```bash
ps aux | grep -i "PROCESS"
```

```bash
ps aux | grep -i node
```

or

```bash
pgrep -w node
```
