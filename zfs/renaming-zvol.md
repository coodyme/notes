# Renaming a zvol

If the zvol is not in use, you can move it by renaming the dataset. This is a simple operation that can be done with the `zfs rename` command.

```sh
zfs rename tank/vol1 tank/vol2
```

If the zvol is in use, you can move it by creating a new zvol, copying the data, and then deleting the old zvol.

```sh
zfs create -V 10G tank/vol2
dd if=/dev/zvol/tank/vol1 of=/dev/zvol/tank/vol2 bs=1M
zfs destroy tank/vol1
```

This will create a new zvol called `tank/vol2`, copy the data from `tank/vol1` to `tank/vol2`, and then delete `tank/vol1`.

