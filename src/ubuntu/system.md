# System

Useful commands for managing and monitoring system resources.

## System information
```bash
uname -a : Displays all system information.
hostnamectl : Shows current hostname and related details.
lscpu : Lists CPU architecture information.
timedatectl status : Shows system time.
```

Change hostname
```bash
sudo hostnamectl set-hostname <new_hostname>
```

Change password
```bash
passwd : Changes the current user’s password.
```



# System monitoring and management
```bash
top : Displays real-time system processes.
htop : An interactive process viewer (needs installation).
df -h : Shows disk usage in a human-readable format.
free -m : Displays free and used memory in MB.
kill <process id> : Terminates a process.
```

# Running commands
```bash
[command] & : Runs command in the background.
jobs : Displays background commands.
fg <command number> : Brings command to the foreground.
```

# Service management
```bash
sudo systemctl start <service> : Starts a service.
sudo systemctl stop <service> : Stops a service
sudo systemctl status <service> : Checks the status of a service.
sudo systemctl reload <service> : Reloads a service’s configuration without
interrupting its operation.
journalctl -f : Follows the journal, showing new log messages in real time.
journalctl -u <unit_name> : Displays logs for a specific systemd unit.
```

# Cron jobs and scheduling
```bash
crontab -e : Edits cron jobs for the current user.
crontab -l : Lists cron jobs for the current user.
```