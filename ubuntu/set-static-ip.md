#linux
# How to set static IP

Disable and remove Cloud Init

```bash
sudo apt remove --purge cloud-init
```

```bash
sudo rm -rf /etc/cloud-init
```

```bash
sudo systemctl mask systemd-networkd-wait-online
```

```bash
sudo systemctl enable systemd-networkd
```

```bash
sudo systemctl status systemd-networkd
```

```bash
sudo rm /etc/netplan/50-cloud-init.yaml
```

Create .cfg file to disable network

```bash
sudo nano /etc/cloud/cloud.cfg.d/99-disable-network-config.cfg
```

99-disable-network-config.cfg

```json
network: {config: disabled}
```

Create YAML config file with

```bash
sudo nano /etc/netplan/01-netcfg.yaml
```

01-netcfg.yaml

```yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      dhcp4: no
      addresses:
		- 192.168.0.xxx/24
      routes:
	    - to: default
		  via: 192.168.0.1
      nameservers:
        addresses: [8.8.8.8,1.1.1.1]
```

Test if netplan changes its working

```bash
sudo netplan try
```

Apply the changes to netplan

```bash
sudo netplan apply
sudo reboot
```
