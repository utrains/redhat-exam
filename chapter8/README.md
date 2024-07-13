## chapter 8 : practice

## _## chapter 8 : practice_

## Example 1: install htop tools
__htop__ is nothing but Interactive process viewer for RHEL (Red Hat Enterprise) 8 Linux . It is just like default top command with an additional set of options and better display on the screen. 

This lab shows the process to install htop on RHEL 9/8 using yum command.

The procedure for installing htop on __Red Hat Enterprise Linux 9/8__ is as follows:

1. Open the terminal window.
2. For remote RHEL 9/8 server login using ssh command.
3. Enable EPEL repo for RHEL 9/8 server or desktop
4. Execute yum search htop command to search for htop on RHEL 9/8
5. Run sudo yum install htop to install htop in RHEL version 9/8

- Enable EPEL repo for RHEL 8
```
sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
```

- Enable EPEL repo for RHEL 9
```
subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
```

- Update and install htop
```
sudo yum update
yum search htop
sudo yum install htop
```

__Note :__ You can also use the script __install_htop.sh__ to install htop in your server

## Example 2: Interpreting Logs

1. Checking Boot Logs:

```
journalctl -b
```

This command shows logs from the current boot, helping you diagnose boot-related issues.

2. Checking Authentication Logs:

```
grep "Failed password" /var/log/auth.log
```

This command searches for failed login attempts, useful for security monitoring.

3. Monitoring Real-Time Logs:

```
tail -f /var/log/syslog
```

This command shows real-time updates to the syslog file.

4. Filtering Systemd Service Logs:

```
journalctl -u ssh.service
```
This command shows logs related to the SSH service.

5. Interpreting Common Log Entries

    Kernel Messages (kern.log and dmesg):
        Look for hardware errors, driver issues, and kernel panic messages.

    Authentication Logs (auth.log):
        Monitor for suspicious login attempts, sudo access, and other authentication-related activities.

    System Logs (syslog and messages):
        Check for system-wide events, service status changes, and error messages from various applications and daemons.

## Example 3: ***