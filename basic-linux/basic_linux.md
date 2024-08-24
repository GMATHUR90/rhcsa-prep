#  Linux for Begineer

kernal act as mediator between hardware and software(application/processes)

- Kernel perform: monolithic and modular
    1. Memory Management
    2. Process Management
    3. Device Driver
    4. System Calls and security
    

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%201.png)

| Command | Use |
| --- | --- |
| dmesg | Display system messages related to hardware and drivers from kernel’s log |
| udevadm | udev administraition tool used for managing nodes in the /dev directory |
| info | To display information about device |
| - -query=path | Specify that you want to query the device path |
| - -name=/dev/sda5 | specify the device for which you want to retrieve information |
| udevadm info - -query=path - -name=/dev/sda5 | Retrieve the device path information for the specified device |
| udevadm monitor | listen to kernel and udev events, display real-time activity on your system in one line |
| udev | device manager for kernel that handles dynamic creation of device nodes in the /dev directory, manages device permissions and processes device event in user space |
| lspci | list all Peripheral Connected device(e.g. Network Card, Sound Card, Graphic Card, USB controller and storage controller |
| lsblk  | show list of all storage devices like usb or HDD and how they are divided up(like into different folder or spaces) |
| lscpu | detail information about CPU architecture including CPU, cores, thread etc. |

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%202.png)

| Commad | Use |
| --- | --- |
| lsmem - -summary | Quick overview of system’s memory. Show total memory and how it is divided into different section |
| free -m | show amount of memory(RAM) free, used and available on your system |
| lshw | display detail information about your computer’s hardware including CPU, memory, storage, and network devices |
|  |  |

**Linux Boot Sequence:**

Power ON — > BIOS/POST( Check hardware and make sure everything is working) — > Bootloader(It looks for bootloader in storage device(like GRUB). Bootloader is a small program that loads the OS —- > Kernel(Bootloader loads linux kernel in memory and starts it) — > Init System(Kernel start Init process and start all background services and processes )—- > Services and Processes(Networking, display manager, and other essential service)—- > Login screen

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%203.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%204.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%205.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%206.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%207.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%208.png)

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%209.png)

1. Regular File(’ -’ ): Common file to store data like text file, executable , images etc. For ex-text(.txt),script(.sh),compiled output(.out).
2. Directory(’d’): Special file that contains another file and directory, forming hierarchy.Ex-/home/username
3. Symbol Link(’l’) : A file that point to another file or directory. Similar to shortcut in window.
4. Character Device(’c’) : Represent a hardware device that transmit data character by character.Ex- ‘/dev/ttys0(serial port) and ‘/dev/console(system console)
5. Block Device(’b’) : Represent a device that transfer data in blocks such as storage device like Hard Drive. Ex- /dev/sda1 , /dev/loop0
6. Socket(’s’) : Used for inter process communication.Ex- /var/run/docker.sock
7. FIFO(Named Pipe)(’p’) : Data written by one process can be read by other

![Untitled](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Untitled%2010.png)

/home: home directory for all user except root user

/opt: to install any third party program and are kept in it

/mnt : to mount any file temporarily

/tmp: data store here for temporarily

once task completed delete file from /tmp and unmount device from /mnt

/media: any external device like usb connected will be reflect here

/bin: contain basic binary like cp, mv, mkdir

/etc: store configuration file

/lib or /lib64: look for shared library

/var: store logs and cache data

/usr: user-related programs, libraries, and data

| command | use |
| --- | --- |
| df -hP | display any mounted device like keyboard or mouse |
|  |  |

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image.png)

Archieve File: tar -cvf test.tar file1 file 2 file 3

c: create a new archive

f: specifies the file name of the archive to create

v: verbose

tar -xf file_to_be_extracted.tar

x: to extract from tar file

tar -zcf : archive file with zip

tar -zcf archive_name.tar.gz /path/to/directory_or_files

gzip file1 : to compress a file

gunzip filename.gz : Unzip a file

**find and grep : To find a file**

/etc/hosts : This file maps hostnames to IP address. It’s used for local hostname resolution before DNS queries.

/etc/resolv.conf : This file specifies the DNS server used for resolving domain names.

/etc/nsswitch.conf : This file configure the system databases and name service switch(NSS) for various services like hostname resolution , user authentication.

passwd:         compat
group:          compat
hosts:          files dns

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%201.png)

google: second level domain 

| **Record Type** | **Purpose** | **Example** | **Use Case** |
| --- | --- | --- | --- |

| **A** | Maps a domain to an IPv4 address | `example.com. IN A 93.184.216.34` | Directs `example.com` to an IPv4 address. |
| --- | --- | --- | --- |

| **AAAA** | Maps a domain to an IPv6 address | `example.com. IN AAAA 2606:2800:220:1:248:1893:25c8:1946` | Directs `example.com` to an IPv6 address. |
| --- | --- | --- | --- |

| **CNAME** | Maps an alias to the canonical domain name | `www.example.com. IN CNAME example.com.` | Redirects `www.example.com` to `example.com`. |
| --- | --- | --- | --- |

| **MX** | Specifies the mail server for a domain | `example.com. IN MX 10 mail.example.com.` | Directs emails for `@example.com` to `mail.example.com`. |
| --- | --- | --- | --- |

| **TXT** | Stores text information for various uses | `example.com. IN TXT "v=spf1 ip4:93.184.216.34 -all"` | Commonly used for SPF, DKIM, and other verifications. |
| --- | --- | --- | --- |

| **NS** | Specifies the authoritative DNS servers for a domain | `example.com. IN NS ns1.example.com.` | Indicates the DNS servers responsible for `example.com`. |
| --- | --- | --- | --- |

| **PTR** | Maps an IP address to a domain name (reverse DNS) | `34.216.184.93.in-addr.arpa. IN PTR example.com.` | Used in reverse DNS lookups to find the domain associated with an IP address. |
| --- | --- | --- | --- |

| **SRV** | Specifies information about services available for a domain | `_sip._tcp.example.com. IN SRV 10 60 5060 sipserver.example.com.` | Defines the location of servers for specific services like VoIP. |
| --- | --- | --- | --- |

| **SOA** | Contains administrative information about the domain | `example.com. IN SOA ns1.example.com. admin.example.com. (...` | Indicates the primary source of information for the domain, used in zone transfers. |
| --- | --- | --- | --- |

| **CAA** | Specifies which CAs can issue certificates for a domain | `example.com. IN CAA 0 issue "letsencrypt.org"` | Limits SSL/TLS certificate issuance to authorized Certificate Authorities. |
| --- | --- | --- | --- |

| **DNSSEC** | Provides authentication for DNS data | N/A | Secures DNS against attacks like cache poisoning and man-in-the-middle attacks using RRSIG, DNSKEY, etc. |
| --- | --- | --- | --- |

### **Comparison:**

| **Feature** | **nslookup** | **dig** |
| --- | --- | --- |
| **Output** | Simple, less detailed | Detailed, comprehensive |
| **Ease of Use** | Easier for basic queries | More complex, but more powerful |
| **Record Type Query** | Basic (A records, reverse lookup) | Supports all DNS record types |
| **Customization** | Limited customization | Highly customizable with various options |
| **Interactivity** | Interactive mode available | Primarily non-interactive |
| **Installation** | Available on most systems by default | May require installation on some systems |

### When to Use:

- **nslookup**: If you need a quick, basic DNS lookup without too much detail. It's straightforward and easy to use.
- **dig**: If you need detailed DNS information, want to query specific record types, or need advanced features like DNSSEC or tracing the resolution path.

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%202.png)

`traceroute` is a network diagnostic tool used to trace the path that packets take from your computer to a specified destination (such as a website or an IP address) across the Internet.

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%203.png)

`netstat` (short for "network statistics") is a command-line tool used to display various network-related information on a system, including active connections, routing tables, interface statistics, masquerade connections, and multicast memberships. It is a versatile tool for network diagnostics and troubleshooting.

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%204.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%205.png)

**Security and File Permission:**

![Screenshot from 2024-08-21 13-04-29.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Screenshot_from_2024-08-21_13-04-29.png)

Access Control: define who can access files and directories and what permission they have. ACL is               managed through user, group and permissions.

Pluggable Authentication Module(PAM) : manages authentication process.

Network Security : protect linux system from unauthorised access , attacks and data breaches through the network.

SSH Hardening: process of securing ssh service to prevent unauthorized access and reduce the risk of attack.

Security-Enhanced Linux(SELinux): Security module to control access to files, processes and resources on the basis of strict policy.

 

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%206.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Screenshot_from_2024-08-21_15-13-48.png)

Switching User: su -

| Particular | Use |
| --- | --- |
| cat /etc/sudoers | which group has permission to execute command as superuser |
| cat /etc/passwd | contain information about user |
| cat /etc/shadow | contain information about secure ;user account information like encrypted password |
| cat /etc/group | contain information about group |
| useradd | add user |
| passwd <user’s_name> | To add password to existing user |
| chmod | change permission |

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/Screenshot_from_2024-08-21_15-21-13.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%207.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%208.png)

SSH:

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%209.png)

| ssh-keygen -t rsa | create ssh key |
| --- | --- |
| ssh-copy-id |  |
|  |  |

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2010.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2011.png)

Storage Basic:

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2012.png)

/dev/ : contains device files represents hardware devices

“^b” : show output that start with letter b

lsblk: list all block devices. Block devices are storage devices that read and write data in blocks, such as hard drives, SSDs, USB drives, etc.

fdisk: tool to manage disk partition

sudo fdisk -l /dev/sda : list the partition table of /dev/sda

**Different Types of Partition:**

- 1 Primary Partition:
    
    Main Storage Area: A hard drive can have upto four primary partition. Each primary partition can hold a separate OS or data.
    
    Bootable: One of the partition can be marked as bootable means we can boot our computer from it.
    
- 2 Extended Partition:
    
    If you need more than four partition, you can create an extended partition. It act as a container for additional partition.
    
    Not directly usable: You can’t store files directly on an extended partition. It needs to be divided into smaller sections called logical partitions.
    
- 3 Logical Partition:
    
    Inside the Extended Partition: Local Partitions are created within an extended partition. You can have as many logical partitions as you need.
    
    Store data: These partition can act as Primary Partions, meaning you can store files and install OS on them.
    
    ![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2013.png)
    

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2014.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2015.png)

comparison of MBR and GPT in tabular form:

| **Feature** | **MBR (Master Boot Record)** | **GPT (GUID Partition Table)** |
| --- | --- | --- |
| **Age** | Older standard (introduced in the 1980s) | Newer standard (part of UEFI, replacing MBR) |
| **Partition Limit** | Up to 4 primary partitions | Up to 128 partitions (by default in Windows) |
| **Support for Extended Partitions** | Yes, supports 1 extended partition with multiple logical partitions | Not needed, supports a large number of partitions directly |
| **Disk Size Limit** | Supports disks up to 2 TB | Supports disks larger than 2 TB (up to 9.4 zettabytes) |
| **Boot Data Location** | Boot data stored in the first sector | Boot data stored in multiple locations for redundancy |
| **Data Corruption Resilience** | Susceptible to corruption (single point of failure) | More resilient (stores multiple copies of partition and boot data) |
| **Compatibility** | Compatible with most older systems and software | Compatible with modern systems and required for UEFI booting |
| **Usage** | Common in older or legacy systems | Standard for newer systems, especially for large drives and UEFI booting |

gdisk: tool for partitioning disk that is GPT

p: print current partition table

n : Create a new partition table

d: Delete a partition

w: write changes to disk and exit

q: quit without saving changes

gdisk /dev/sdb: create partition in second disk assuming first disk is /dev/sda

sudo fdisk -l /dev/sdb: display  details about /dev/sdb

**Linux Filesystem**: is a way to store and organize data on a disk or storage disk.

Disk—— > Partition—— > Create File System—— > Mount File System

Journaling: After crash or power failure, speed up data recovery and data corruption,

EXT: Extended File System

a comparison of EXT2, EXT3, and EXT4 in tabular form:

| **Feature** | **EXT2** | **EXT3** | **EXT4** |
| --- | --- | --- | --- |
| **Introduced** | 1993 | 2001 | 2008 |
| **Journaling** | No | Yes | Yes |
| **Performance** | Faster (no journaling overhead) | Slightly slower than EXT2 | Faster than EXT3 (due to enhancements like delayed allocation) |
| **Max File Size** | 2 TB | 2 TB | 16 TB |
| **Max Filesystem Size** | 32 TB | 32 TB | 1 EB (Exabyte) |
| **Backward Compatibility** | No | Yes (upgrade from EXT2) | Yes (can mount EXT3) |
| **Special Features** | Simple, no journaling | Journaling, reliable recovery | Extent-based storage, delayed allocation, better defragmentation |
| **Use Case** | Embedded systems, small devices | General-purpose, servers/desktops | Default for modern systems, supports large files and filesystems |

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2016.png)

/etc/fstab(file system table): is a configuration file in linux that defines how disk partition, network shares, and other storage devices should be mounted to the system during boot.

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2017.png)

Network File System(NFS): is a protocol in linux that allow to share file or directory over a network.

Key Concept of NFS:

- Server-Client Model: The system where the files are physically stored is called NFS Server. The system that access the files over network are called NFS client.
- Mounting: NFS client mounted the shared directory from the server and once mounted the shared directory behaves like a local file system on the client machine.

Benefit:

1. Shared Access
2. Centralized Management

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2018.png)

![image.png](Kodekloud%20Linux%20for%20Begineer%201e89eb8aa7b147cbbe19d5bfa9534624/image%2019.png)

Comparision between DAS, NAS and SAN

| **Feature** | **DAS (Direct-Attached Storage)** | **NAS (Network-Attached Storage)** | **SAN (Storage Area Network)** |
| --- | --- | --- | --- |
| **Connection** | Directly attached (SATA, USB) | Over the network (Ethernet, Wi-Fi) | Dedicated storage network (Fibre Channel, iSCSI) |
| **Access** | Single computer | Multiple computers over a network | Multiple servers in a data center |
| **Performance** | High (local access) | Moderate (depends on network) | Very high (dedicated network) |
| **Scalability** | Limited | Moderate | Very high |
| **Cost** | Low | Moderate | High |
| **Complexity** | Simple | Moderate | Complex |
| **Typical Usage** | Personal use, small businesses | Small to medium businesses, home | Large enterprises, data centers |
| Example | External USB hard drive attached to your laptop | Synology/QNAP NAS serving files to home computers over Wi-Fi | Synology/QNAP NAS serving files to home computers over Wi-Fi |

**Logical Volume Manager(LVM):**  is a tool that makes managing disk space easier or more flexible. Instead of traditional fixed size partition, LVM allows you to combine multiple physical disk or partitions into one large pool of storage and then create flexible virtual partitions called logical volumes from the pool
