#vm
#proxmox

# Things to do before use Proxmox

## Keep Proxmox Running

If you are using laptop and you want to keep Proxmox running while lid is closed:

1. Go to `/etc/systemd/logind.conf` and open
2. Uncomment the line about `HandleLidSwitch=suspend` and change `suspend` to `ignore`
3. Used this to restart systemd-logind: `systemctl restart systemd-logind`
4. Then check status: `systemctl status systemd-logind`

## How to update Proxmox without a subscription

Follow the steps bellow to update Proxmox:

1. Enable updates: Open `nano /etc/apt/sources.list` and add at the end of line `deb http://download.proxmox.com/debian bookworm pve-no-subscription`
2. Disable enterprise list: Open with nano `nano /etc/apt/sources.list.d/pve-enterprise.list` and comment the line. (We need to do this if we don't have any subscription to avoid errors while updating'
3. Now execute `apt dist-upgrade` to upgrade or go to UI and proxmox > updates > refresh then, click on upgrade

## Storage



