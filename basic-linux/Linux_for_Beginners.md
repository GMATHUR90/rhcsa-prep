
# Linux for Beginners

The kernel acts as a mediator between hardware and software (applications/processes).

## Kernel Functions
The kernel performs the following functions:
1. Memory Management
2. Process Management
3. Device Drivers
4. System Calls and Security

## Key Commands

| Command | Description |
| --- | --- |
| `dmesg` | Displays system messages related to hardware and drivers from the kernel’s log |
| `udevadm` | udev administration tool used for managing nodes in the /dev directory |
| `info` | Displays information about the device |
| `--query=path` | Specifies that you want to query the device path |
| `--name=/dev/sda5` | Specifies the device for which you want to retrieve information |
| `udevadm info --query=path --name=/dev/sda5` | Retrieves the device path information for the specified device |
| `udevadm monitor` | Listens to kernel and udev events and displays real-time activity on your system in one line |
| `udev` | Device manager for the kernel that handles dynamic creation of device nodes in the /dev directory, manages device permissions, and processes device events in user space |
| `lspci` | Lists all Peripheral Connected devices (e.g., Network Card, Sound Card, Graphic Card, USB controller, and storage controller) |
| `lsblk` | Shows a list of all storage devices like USB or HDD and how they are divided up (like into different folders or spaces) |
| `lscpu` | Provides detailed information about CPU architecture including CPU, cores, threads, etc. |

## Memory Management Commands

| Command | Description |
| --- | --- |
| `lsmem --summary` | Provides a quick overview of the system’s memory, showing total memory and how it is divided into different sections |
| `free -m` | Shows the amount of memory (RAM) that is free, used, and available on your system |
| `lshw` | Displays detailed information about your computer’s hardware including CPU, memory, storage, and network devices |

## Linux Boot Sequence

Power ON → BIOS/POST (Check hardware and make sure everything is in working order) → Bootloader → Kernel → Init system → Runlevel → Login

## Images

Images related to the content should be included with the correct Markdown syntax:

- ![Kernel Functions](images/1.png)
- ![Device Management](images/2.png)
- ![Memory Management](images/3.png)

Note: Ensure that the images are placed in an "images" folder within the same directory as the Markdown file.

