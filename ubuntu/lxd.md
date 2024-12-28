 LXD is a modern, secure and powerful tool that provides a unified experience for
running and managing containers or virtual machines. Visit https ://canonical.com/lxd
for more information.

```bash
lxd init : initializes LXD before first use
```

# Creating instances
```bash
lxc init ubuntu:22.04 <container name> : Creates a lxc system container (without
starting it).
lxc launch ubuntu:24.04 <container name> : Creates and starts a lxc system
container.
lxc launch ubuntu:22.04 <vm name> --vm : Creates and starts a virtual machine.
```

# Managing instances
```bash
lxc list : Lists instances.
lxc info <instance> : Shows status information about an instance.
lxc start <instance> : Starts an instance.
lxc stop <instance> [--force] : Stops an instance.
lxc delete <instance> [--force|--interactive] : Deletes an instance.
```

# Accessing instances
```bash
lxc exec <instance> -- <command> : Runs a command inside an instance.
lxc exec <instance> -- bash : Gets shell access to an instance (if bash is
installed).
lxc console <instance> [flags] : Gets console access to an instance.
lxc file pull <instance>/<instance_filepath> <local_filepath> : Pulls a file from
an instance.
lxc file pull <local_filepath> <instance>/<instance_filepath> : Pushes a file to
an instance.
```
# Using projects
```bash
lxc project create <project> [--config <option>] : Creates a project.
lxc project set <project> <option> : Configures a project.
lxc project switch <project> : Switches to a project.
```