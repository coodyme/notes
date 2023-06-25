
#devops 
#aws 
#ec2

## Extend the file system of EBS volumes

Check the volume for partitions

```bash
sudo lsblk
```

```bash
NAME         MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0          7:0    0  24.4M  1 loop /snap/amazon-ssm-agent/6312
loop1          7:1    0  55.6M  1 loop /snap/core18/2714
loop2          7:2    0  55.6M  1 loop /snap/core18/2721
loop3          7:3    0  63.3M  1 loop /snap/core20/1828
loop4          7:4    0  63.3M  1 loop /snap/core20/1852
loop5          7:5    0 111.9M  1 loop /snap/lxd/24322
loop6          7:6    0  53.2M  1 loop /snap/snapd/18933
loop7          7:7    0  49.8M  1 loop /snap/snapd/18596
nvme0n1      259:0    0   500G  0 disk 
├─nvme0n1p1  259:1    0  59.9G  0 part /
├─nvme0n1p14 259:2    0     4M  0 part 
└─nvme0n1p15 259:3    0   106M  0 part /boot/efi
```

Check the current disk 

```
df -hT
```

```bash
Filesystem      Type   Size  Used Avail Use% Mounted on
/dev/root       ext4    58G   58G  257M 100% /
tmpfs           tmpfs  3.9G     0  3.9G   0% /dev/shm
tmpfs           tmpfs  1.6G  8.8M  1.6G   1% /run
tmpfs           tmpfs  5.0M     0  5.0M   0% /run/lock
/dev/nvme0n1p15 vfat   105M  6.1M   99M   6% /boot/efi
tmpfs           tmpfs  785M  4.0K  785M   1% /run/user/1000
```

Now, you can apply the `growpart` command by using

```bash
sudo growpart /dev/nvme0n1 1
```

Now, run `lsblk` again to check the `SIZE`

```bash
NAME         MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0          7:0    0  24.4M  1 loop /snap/amazon-ssm-agent/6312
loop1          7:1    0  55.6M  1 loop /snap/core18/2714
loop2          7:2    0  55.6M  1 loop /snap/core18/2721
loop3          7:3    0  63.3M  1 loop /snap/core20/1828
loop4          7:4    0  63.3M  1 loop /snap/core20/1852
loop5          7:5    0 111.9M  1 loop /snap/lxd/24322
loop6          7:6    0  53.2M  1 loop /snap/snapd/18933
loop7          7:7    0  49.8M  1 loop /snap/snapd/18596
nvme0n1      259:0    0   500G  0 disk 
├─nvme0n1p1  259:1    0 499.9G  0 part /
├─nvme0n1p14 259:2    0     4M  0 part 
└─nvme0n1p15 259:3    0   106M  0 part /boot/efi
```

As you can see the `nvme0n1p1` has `499.9G`, and to extend use:

```bash
sudo resize2fs /dev/nvme0n1p1
```