# Networking
```bash
ip addr show : Displays network interfaces and IP addresses.
ip -s link : Shows network statistics.
ss -l : Shows listening sockets.
ping <host> : Pings a host and outputs results.
```

# Netplan configuration (read more at netplan.io)
```bash
cat /etc/netplan/*.yaml : Displays the current Netplan configuration.
sudo netplan try : Tests a new configuration for a set period of time.
sudo netplan apply : Applies the current Netplan configuration.
```

# Firewall management
```bash
sudo ufw status : Displays the status of the firewall.
sudo ufw enable : Enables the firewall.
sudo ufw disable : Disables the firewall.
sudo ufw allow <port/service> : Allows traffic on a specific port or service.
sudo ufw deny <port/service> : Denies traffic on a specific port or service.
sudo ufw delete allow/deny <port/service> : Deletes an existing rule.
SSH and remote access
ssh <user@host> : Connects to a remote host via SSH.
scp <source> <user@host>:<destination> : Securely copies files between hosts.
```

# Firewall management
```bash
sudo ufw status : Displays the status of the firewall.
sudo ufw enable : Enables the firewall.
sudo ufw disable : Disables the firewall.
sudo ufw allow <port/service> : Allows traffic on a specific port or service.
sudo ufw deny <port/service> : Denies traffic on a specific port or service.
sudo ufw delete allow/deny <port/service> : Deletes an existing rule.
```

# SSH and remote access
```bash
ssh <user@host> : Connects to a remote host via SSH.
scp <source> <user@host>:<destination> : Securely copies files between hosts.
```