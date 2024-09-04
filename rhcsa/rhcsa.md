# Kodekloud RHCSA

- Login Method:
    1. Local text Mode Console: login  using local linux terminal
    2. Local graphical-mode console: login using Local GUI 
    3. Remote text-mode login: remotely accessing a linux device using terminal
    4. Remote graphical-mode login: remotely accessing a linux device using GUI
    

![console_1.png](rhcsa_images/console_1.png)

 

Console: low level text interface often accessed at boot up linux system, where you can login in and access command without GUI.

Virtual Terminal: Multiple text based console available within the system. You can switch between  these terminals using shortcut keys, even if you are in GUI environment.

Terminal Emulator: A software-based terminal running within a GUI, allowing you to interact with the shell in a graphical environment. ex- for windows : putty and linux: gnome terminal 

![VNC_and_RDP_2.png](rhcsa_images/VNC_and_RDP_2.png)

Virtual Network Computing(VNC): protocol for remote GUI access for linux

Remote Desktop Protocol(RDP) : protocol for remoe GUI access for windows.

![SSH_and_Telnet_3](rhcsa_images/SSH_and_Telnet_3.png)

ip command is rich and better version of ifconfig, route and netstat commands combined.

It is used for network management.

Basic syntax:  ip <object> <command>

object: address, link, route

command : add, del ,show

| Command | Use |
| --- | --- |
| ip link show | display information about network interface like status(up or down), MAC address |
| ip address show | show ip address assigned to network interfaces |
| ip address add | assign ip address to specific network interface |
| ip address del | remove ip address from specified network interface |
| ip link set | Enables(up) or Disables(down) network interfacei |
| ip route show | display route table, show how traffic routed from your system to another system. |
| ip route add | add a new route to routing table |
| ip route del | delete a route from routing table |

**Read and Use System Documentation:**

| <command> - -help | provide descriptive information about command |
| --- | --- |
| <command> -help(Not use much) | provide short information about command |
| man <command> | display full manual page of command |
| apropos <keyword> | if you are not sure what is the command, use apropos along with keyword , it will look up manpages and provide all possible outcome for that keyword |
| sudo mandb | update manpages database cache |
| systemctl | allows you to manage services, check system status , enable/disable services at boot, manage system state like reboot and shutdown |
| systemctl list-dependencies [unit] | list down all dependencies to run that service or unit |

**Working with files and directories:**

| ls | list |
| --- | --- |
| ls -a | list all including hidden file |
| ls -l | list directory content in long format |
| ls -h | list directory content in file size in human readable format |
| pwd | print working directory |
| cd / | go to root directory |
| cd -  | go to previous directory |
| cd  | go to home directory |
| touch | create a file |
| mkdir | create a directory |
| cp -r [source] [destination] | copy command recursively |
| mv [source] [destination] | move command |
| rm -r | remove recursively |

**Create and Manage Hard Link:**

inode(Index Node) : content metadata about file or directory, but not it names or content.

Example: library catalog:

- book title: file name
- catalog card : detail about book(author , ISBN, location ) is like inode

Metadata of inode:

1. File type 2. Permissions 3. Owner 4. Group 5. Size 6.Timestamps 7. Link Count 8. Pointers 

![Hard_link_4.png](rhcsa_images/Hard_link_4.png)

stat: file system status

![Hard_link_5](rhcsa_images/Hard_link_5.png)

Hard Link: A hard link is like creating a second name for the same file. Both the original file and hard link point to same data on disk.

| ln <path_to_target_file> <path_to_link_file> | Hard link |
| --- | --- |

![Hard_link_6.png](rhcsa_images/Hard_link_6.png)

![Hard_link_7.png](rhcsa_images/Hard_link_7.png)

Soft Link: A soft link is like a shortcut to another file or directory. It point’s to the file location rather than file itself.

![Soft_link_8.png](rhcsa_images/Soft_link_8.png)

![Soft_link_9.png](rhcsa_images/Soft_link_9.png)
