# Package management (APT)
```bash
sudo apt install <package> : Installs a package.
sudo apt install -f –reinstall <package> : Reinstalls a broken package.
apt search <package> : Searches for APT packages.
apt-cache policy <package> : Lists available package versions.
sudo apt update : Updates package lists.
sudo apt upgrade : Upgrades all upgradable packages.
sudo apt remove <package> : Removes a package.
sudo apt purge <package> : Removes a package and all its configuration files.
```

# Package management (Snap)
```bash
snap find <package> : Search for Snap packages.
sudo snap install <snap_name> : Installs a Snap package.
sudo snap remove <snap_name> : Removes a Snap package.
sudo snap refresh : Updates all installed Snap packages.
snap list : Lists all installed Snap packages.
snap info <snap_name> : Displays information about a Snap package.
```