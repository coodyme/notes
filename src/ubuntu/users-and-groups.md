# User management
```bash
w : Shows which users are logged in.
sudo adduser <username> : Creates a new user.
sudo deluser <username> : Deletes a user.
sudo passwd <username> : Sets or changes the password for a user.
su <username> : Switches user.
sudo passwd -l <username> : Locks a user account.
sudo passwd -u <username> : Unlocks a user password.
Sudo change <username> : Sets user password expiration date.
```

# Group management
```bash
id [username] : Displays user and group IDs.
groups [username] : Shows the groups a user belongs to.
sudo addgroup <groupname> : Creates a new group.
sudo delgroup <groupname> : Deletes a group.
```