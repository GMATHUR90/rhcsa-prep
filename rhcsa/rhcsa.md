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

**List, Set, and Change file Permission:**

| **Command** | **Use** |
| --- | --- |
| chgrp <options> <group><file/directory | change group of file or directory |
| chgrp -r <options> <group><file/directory | change group of file or directory recursivelyd |
| groups | display groups a current user is member of |
| chown | change ownership of file or directory |

![owner_and_group_10.png](rhcsa_images/owner_and_group_10.png)

![perm_11.png](rhcsa_images/perm_11.png)

![perm_12.png](rhcsa_images/perm_12.png)

| **Command** | **Use** |
| --- | --- |
| chmod | change permission of file or directory |
| u | user |
| g | group |
| o | other |
| r | read |
| w | write |
| x | execute |

![add_perm_13.png](rhcsa_images/add_perm_13.png)

![remove_perm_14.png](rhcsa_images/remove_perm_14.png)

![setting_exact_perm_15.png](rhcsa_images/setting_exact_perm_15.png)

![chaining_perm_16.png](rhcsa_images/chaining_perm_16.png)

![octal_perm_17.png](rhcsa_images/octal_perm_17.png)

**Search for files:**

| **Command** | **Use** |
| --- | --- |
| find | used to search for files or directories within a directory hierarchy based on name, type, size, etc. |
| find <path> <option> <expression> | syntax of find command |
| -name | name (option) of pattern what we are searching for |
| -size | size(option) of file what we are searching for |
| -mmin | minimum minutes(option): last time files or directory got modified |
| type -f | it represent looking for file only |
| type -d | it represent looking for directory only |
| -iname | search for files or directory by name but it is case insensitive |
| -o | or operator |
| **-not** / **\!** | negate a condition |
| -perm | permission |

![find_18.png](rhcsa_images/find_18.png)

![find_19.png](rhcsa_images/find_19.png)

![find_20.png](rhcsa_images/find_20.png)

![find_21.png](rhcsa_images/find_21.png)

![find_22.png](rhcsa_images/find_22.png)

![find_23.png](rhcsa_images/find_23.png)

![find_24.png](rhcsa_images/find_24.png)

![find_25.png](rhcsa_images/find_25.png)

![find_26.png](rhcsa_images/find_26.png)

**Compare and Manipulate File Content:**

| **Command** | **Use** |
| --- | --- |
| cat file_name.txt | used to concatenate and display content of file |
| cat -n  file_name.txt | display line number |
| cat file_name_1.txt  file_name_2.txt > combined.txt | concatenate multiple files |
| cat file_name.txt > output_1.txt | redirect the output |
| cat file_name.txt >> output_2.txt | appending a file |
| tac output_2.txt | show content in reverse |
| tail test_1.txt | display last 10 lines of a file |
| tail -n 20 test_1.txt | display last 20 lines of a file |
| tail -n 20 -f log_file.txt | This starts by showing the last 20 lines and then continues to follow the file as it grows. |
| tail -n 20 -F log_file_renamed.txt | The `-F` option is like `-f`, but it checks if the file is rotated (e.g., renamed or deleted) and then **continues real time monitoring** the new file. |
| head log_file.txt | display 10 lines of  beginning of file or stream of data |
| head -n 20 log_file.txt | display 20 lines from the beginning of a file or stream of data |
| head -c 50 log_file.txt | show first N bytes instead of line |
| sed [options] ‘command’ file_name | sed stand for stream editor and it is use for searching, finding, replacing, inserting, or deleting text/ |
| sed ‘s/old-text/new-text/’ sample_log.txt | replace first occurrence of “ old-text” with “new-text” in each line of “sample_log_txt” |
| sed’ s/old-text/new-text/g’ sample_log.txt | To replace all occurrences of a pattern in each line, add the `g` flag. Global substitution |
| sed -i ‘s/old-pattern/new-pattern/g’ sample_log.txt | **In-Place Editing:**To directly modify the file instead of just displaying the output, use the `-i` option. |
| sed -e ‘s/old_pattern_1/new_pattern_1/g’ ‘s/old_pattern_2/new_pattern_2/g’ log_file.txt | You can chain multiple commands using the `-e` option. |
| cut [option] file_name.txt | used to extract sections from each line of files or input based on delimiters , fields , byte positions or character positions |
| cut -b 1-4 file_1.txt | extract first four bytes from each line |
| cut -c 2-5 file_1.txt | extract characters from position 2 to 5 from each line |
| cut -d “:” -f 1 data.csv  | `-d ":"`: This sets the delimiter to `:`, meaning `cut` will treat the colon (`:`) as the field separator.                                                 -f 1: first column from each line  |
| uniq [file] | uniq only removes consecutive duplicates. To handle non-consecutive duplicates, you should sort the file first using the sort command before using uniq |
| sort file_1.txt | sort the lines in the file in ascending order (default behavior) |
| diff [option] file1 file 2 | command is used to compare content of file side by side. |
| diff -c file_1 file_2 | The `-c` option provides a context format, similar to unified but with more context lines around the changes. |
| diff –y file1 file2 | -y provides side by side comparision |

- Use `f` and `d` for structured text like CSVs or `/etc/passwd`.
- Use `c` or `b` when working with fixed-width data.

![cat_27.png](rhcsa_images/cat_27.png)

![tail_28.png](rhcsa_images/tail_28.png)

![tail_29.png](rhcsa_images/tail_29.png)

![tail_30.png](rhcsa_images/tail_30.png)

![tail_31.png](rhcsa_images/tail_31.png)

![head_32.png](rhcsa_images/head_32.png)

![head_33.png](rhcsa_images/head_33.png)

![head_34.png](rhcsa_images/head_34.png)

![cat_35.png](rhcsa_images/cat_35.png)

![sed_36.png](rhcsa_images/sed_36.png)

![sed_37.png](rhcsa_images/sed_37.png)

![sed_38.png](rhcsa_images/sed_38.png)

![cut_39.png](rhcsa_images/cut_39.png)

![cut_40.png](rhcsa_images/cut_40.png)

![cut_41.png](rhcsa_images/cut_41.png)

![uniq_42.png](rhcsa_images/uniq_42.png)

![sort_43.png](rhcsa_images/sort_43.png)

![diff_44.png](rhcsa_images/diff_44.png)

![diff_45.png](rhcsa_images/diff_45.png)

![diff_46.png](rhcsa_images/diff_46.png)

**Search files with Grep(Global Regular Expression Print):**

grep is used for searching text or pattern within files. 

Syntax: grep [option] pattern [file]

Common Options:

**-i:** ignore case(case-insensitive)

**-v:** invert match(return lines that do not match)

**-r:** Recursive search through directories

**-n:** Show line numbers

**-c:** Count the number of matching lines

**-w:** Match whole words only

**-l:** list the file names that contain the match

**-o:** option prints only the matching part of the line.

**-e:** option allows you to specify multiple patterns.

![grep_47.png](rhcsa_images/grep_47.png)

![grep_48.png](rhcsa_images/grep_48.png)

![grep_49.png](rhcsa_images/grep_49.png)

![grep_50.png](rhcsa_images/grep_50.png)

![grep_51.png](rhcsa_images/grep_51.png)

![grep_52.png](rhcsa_images/grep_52.png)

![grep_53.png](rhcsa_images/grep_53.png)

**Analyze Text With Regular Expressions(Regex):**

Regex are pattern used to match character combination in strings.

Type of Regex in Linux:

- 1) Basic Regular Expressions:
    - Used in command like grep(without -E), sed, etc.
    - Basic meta characters include ^, $, \ and more.
    
- 2) Extended Regular Expressions:
    - Used with commands like grep -E, sed -E, egrep etc.
    - Allows more complex patterns with additional meta characters such as +, ?, | , (), etc.

**Regex Operators:**

- **Caret(^)** : Matches the beginning of line.
- **Dollar($)** : Matches the end of line
- **Dot(.)** : Matches any single character except newline.
- **Asterisk(*)** : Matches zero or more occurrences of the preceding characters.
- **Plus(+)** : Matches one or more occurrences of the preceding characters(in ERE).
- **Question Mark (?)** : Matches zero or one occurrence of the preceding characters(in ERE).
- **Pipe(|)** : OR operator
- **Square Brackets ( [ ] )** : Matches any one of the characters inside the brackets.
- **Backslash ( \ )** : Escapes special characters.
- **Parenthesis ( () ) :** Group expressions
- **[ ^ ]** : It matches any character that **is not** inside the square brackets.

![re_54.png](rhcsa_images/re_54.png)

![re_55.png](rhcsa_images/re_55.png)

![re_56.png](rhcsa_images/re_56.png)

![re_57.png](rhcsa_images/re_57.png)

![re_58.png](rhcsa_images/re_58.png)

![re_59.png](rhcsa_images/re_59.png)

![re_60.png](rhcsa_images/re_60.png)

![re_61.png](rhcsa_images/re_61.png)

![re_62.png](rhcsa_images/re_62.png)

![re_63.png](rhcsa_images/re_63.png)

![re_64.png](rhcsa_images/re_64.png)

![re_65.png](rhcsa_images/re_65.png)

![re_66.png](rhcsa_images/re_66.png)

![re_67.png](rhcsa_images/re_67.png)

![re_68.png](rhcsa_images/re_68.png)

![re_69.png](rhcsa_images/re_69.png)

‘0+’ only look for only mentioned data in quotes but it will not find any 0 with sequence.

![re_70.png](rhcsa_images/re_70.png)

![re_71.png](rhcsa_images/re_71.png)

![re_72.png](rhcsa_images/re_72.png)

![re_73.png](rhcsa_images/re_73.png)

![re_74.png](rhcsa_images/re_74.png)

![re_75.png](rhcsa_images/re_75.png)

![re_76.png](rhcsa_images/re_76.png)

![re_77.png](rhcsa_images/re_77.png)

![re_78.png](rhcsa_images/re_78.png)

![re_79.png](rhcsa_images/re_79.png)

![re_80.png](rhcsa_images/re_80.png)

![re_81.png](rhcsa_images/re_81.png)

![re_82.png](rhcsa_images/re_82.png)

![re_83.png](rhcsa_images/re_83.png)

![re_84.png](rhcsa_images/re_84.png)

![re_85.png](rhcsa_images/re_85.png)

**Archive Files**

**tar (Tape Archive):** used to create and manage archives

tar [ option ] file.tar file1 file2 file2

**Commonly used options:**

**-c :** Create a new archive

**-x :** Extract files from archive

**-v :** Verbose mode

**-f :** Specify the name of archive

**-z :** Compress the archive using gzip

**-j :** Compress the archive using bzip2

**-t :** Lists the content of archive

**-r :** Append to existing file

![archive_86.png](rhcsa_images/archive_86.png)

![archive_87.png](rhcsa_images/archive_87.png)

![archive_88.png](rhcsa_images/archive_88.png)

![archive_89.png](rhcsa_images/archive_89.png)

![archive_90.png](rhcsa_images/archive_90.png)

![archive_91.png](rhcsa_images/archive_91.png)

**Compress and Decompress Files:**

| gzip file_1 file_2 file_3 | Compress file using the gzip compression algorithm |
| --- | --- |
| gzip -k filename | keep the original file after compression |
| gzip -d filename.gz | -d(decompress) a .gz file |
| bzip2 file_1 file_2 file_3 | Compress file using the bzip2 compression algorithm, which usually provide better compression than gzip |
| bzip2 -k file_1 file_2 file_3 | Keep the original file after compression |
| bzip2 -d  file_1 file_2 file_3 | -d(decompress) a .bz2 file |
| xz file_1 file_2 file_3 | Compression file using the xz compression algorithm, which provide better compression than bzip2 |
| xz -k filename | keep the original file after compression |
| xz -d filename | -d(decompress) a .xz file |
| gunzip filename.gz | decompress files that were compressed using gzip |
| bunzip2 filename.bz2 | decompress files that were compressed using bzip2 |
| unxz filname.xz | decompress file that were compressed using xz. |

![compress_92.png](rhcsa_images/compress_92.png)	

![compress_93.png](rhcsa_images/compress_93.png)	

![compress_94.png](rhcsa_images/compress_94.png)	

![compress_95.png](rhcsa_images/compress_95.png)	

![compress_96.png](rhcsa_images/compress_96.png)	


| zip archive_name.zip file1.txt file2.txt | create a compressed .zip archive |
| --- | --- |
| zip -r archive_name.zip my_directory/ | compress an entire directory |
| unzip archive_name.zip | extract file from a .zip file |
| unzip archive_name.zip -d /path/to/directory | Extract to a specific directory |

![zip_97.png](rhcsa_images/zip_97.png)

**Redirecting Input and Output:**

![redirect_input_98.png](rhcsa_images/redirect_input_98.png)

![redirect_input_99.png](rhcsa_images/redirect_input_99.png)

![redirect_input_100.png](rhcsa_images/redirect_input_100.png)


| **>** | Output Redirection | Redirects output to a file, overwriting it |  |
| --- | --- | --- | --- |
| **>>** | Append Output Redirection | Redirects output to a file, appending to it |  |
| **<** | Input Redirection | Redirects input from a file to a command |  |
| **<<** | Here Document |  Redirects input to a command from a "here document," allowing multi-line input directly in the script or command |  |

![redirect_input_101.png](rhcsa_images/redirect_input_101.png)

![redirect_input_102.png](rhcsa_images/redirect_input_102.png)

![redirect_input_103.png](rhcsa_images/redirect_input_103.png)

![redirect_input_104.png](rhcsa_images/redirect_input_104.png)

![redirect_input_105.png](rhcsa_images/redirect_input_105.png)

![redirect_input_106.png](rhcsa_images/redirect_input_106.png)

**Archive, Compress, Pack and Unpack Files using Star:**

Star command is a powerful tool for archiving, compressing, packing and unpacking files.

**star [ option ] file=/path/to/archive.star files**

Common Star Option:

**-c** : Create a new archive

**-x**: Extract files from an archive

**-t**: List content of an archive

**-f**: Specify the file name of the archve

**-z**: Compress with gzip

**-bz**: Compress with bzip2

**-level**: Specify backup level(0 for full , 1 for incremental)

-**sparsh**: Handle sparsh files more efficiently ( A sparsh file is a type of file that contains large block of empty or null data, which are not physically stored on disk).


**Securely Transfer Files Between Systems:**

**scp** : secure copy

**stfp**: secure file transfer process

**Using scp (Secure Copy) :**

**Syntax:**

**Copy from a remote system to local system:**

```jsx
**scp -i /home/username/Downloads/PEMfile.pem username@remote_ip:/remote/path/to/file /local/path**
```
![scp_107.png](rhcsa_images/scp_107.png)

![scp_108.png](rhcsa_images/scp_108.png)

**Copy from a local system to remote system:**

```jsx
**scp -i /home/username/Downloads/PEMfile.pem /local/path/to/file username@remote_ip:/remote/path**
```
![scp_109.png](rhcsa_images/scp_109.png)

**Copy between two remote system:**

```jsx
**scp user1@remote_ip1:/path/to/file user2@remote_ip2:/path/to/file**
```

**Using sftp(SSH file transfer protocol):**

- sftp is an interactive, file transfer program, similar to FTP but using SSH encryption.
- It allows you to securely upload, download and manage files.

**Syntax:**

```jsx
**sftp -i /path/to/your-key.pem username@remote_ip**
```
Common Options:

- get -r : download a directory recursively
- put -r : Upload a directory recursively
- ls: list files and directories on the remote server
- cd: Change the directory on the remote server
- pwd: Print the current working directory on remote server
- lpwd: Print the current working directory on local server
- mget *.txt : Download multiple files
- mput *.log: Upload multiple files
- mkdir: Create a directory on the remote server
- rmdir: Remove a directory on the remote server
- rm: remove a file on the remote server

![sftp_110.png](rhcsa_images/sftp_110.png)

![sftp_111.png](rhcsa_images/sftp_111.png)

Upload a file from local to remote:

![sftp_112.png](rhcsa_images/sftp_112.png)

Upload a file from remote to local:

![sftp_113 .png](rhcsa_images/sftp_113.png)

![sftp_114.png](rhcsa_images/sftp_114.png)

**Boot, Reboot, and Shutdown Systems:**

| **S.N.O** | **Command** | **Use** |
| --- | --- | --- |
| 1 | sudo systemctl reboot | reboot the system immediately |
| 2 | sudo systemctl poweroff | shutdown and poweroff the system |
| 3 | sudo systemctl reboot - -force | Forces a system to reboot, bypassing some checks |
| 4 | sudo systemctl poweroff - -force | Forces to power off, similar to cutting off the system |
| 5 | sudo systemctl reboot - -force - -force | More aggressive force reboot, equivalent to hardware reset |
| 6 | sudo systemctl poweroff - -force - -force | System to power-off aggressively, bypassing all services clearly |
| 7  | sudo shutdown 02:00 | Schedules a shutdown at 02:00 AM |
| 8 | sudo shutdown +15 | Schedule a shutdown in 15 minutes |
| 9 | sudo shutdown -r 02:00 | Schedule a system reboot at 02:00 AM |
| 10 | sudo shutdown -r +15 | Schedule a system reboot in 15 minutes |
| 11 | sudo shutdown -r +1 'Scheduled restart to do an offline-backup of our database’ | Schedules a reboot in 1 minute with a custom message to inform users about the reason for the restart.

![shutdown_115.png](rhcsa_images/shutdown_115.png)


**Diagnose and Manage the processes:**

ps command in linux used to display information about processes.

| Command/Flags | Use |
| --- | --- |
| ps  | list running process |
| ps aux | list detailed process information |
| a | All user’s process |
| u | Display the user that owns each process |
| x | Show processes without a controlling terminal(background processes) |

You will see columns like:

- USER: The owner of the process
- PID: Process ID
- %CPU: CPU usage
- %MEM: Memory usage
- COMMAND: The command that started the process


![ps_116.png](rhcsa_images/ps_116.png)

![ps_117.png](rhcsa_images/ps_117.png)

![ps_118.png](rhcsa_images/ps_118.png)

![ps_119.png](rhcsa_images/ps_119.png)

Show user friendly ps format:

![ps_120.png](rhcsa_images/ps_120.png)


![ps_121.png](rhcsa_images/ps_121.png)

![ps_122.png](rhcsa_images/ps_122.png)

**nice value** determines the **priority** of a process

### Key Points about Nice Values:

- **Range**: Nice values range from `20` (highest priority) to `19` (lowest priority).
- **Default**: The default nice value for processes is `0`.
- **Lower Nice Value**: Gives the process **higher priority** (it gets more CPU time).
- **Higher Nice Value**: Gives the process **lower priority** (it gets less CPU time).

### Summary:

- **Lower nice value** (e.g., `10`) = higher priority.
- **Higher nice value** (e.g., `10`) = lower priority.

ps lax: show detailed information about processes running on your system.

![nice_123.png](rhcsa_images/nice_123.png)

![nice_124.png](rhcsa_images/nice_124.png)

ps fax: show tree view of processes running on your system.

![nice_125.png](rhcsa_images/nice_125.png)

![nice_126.png](rhcsa_images/nice_126.png)

ps faux: display tree like structure of processes running on your system along with user.

![nice_127.png](rhcsa_images/nice_127.png)

![nice_128.png](rhcsa_images/nice_128.png)

renice: change the priority(nice value) of running processes.

sudo renice -n 7 pid

![renice_129.png](rhcsa_images/renice_129.png)

![renice_130.png](rhcsa_images/renice_130.png)

# Signals in Process Management(Sig stop and sig kill):

In process management, signals are used to communicate with processes and control their behavior.

## In summary:

- SIGSTOP pauses a process (it can be resumed)
- SIGKILL forcefully kills a process (it can't be resumed).

| **S.N.O** | **Command**          | **Use**                                                                                                   |
|-----------|----------------------|-----------------------------------------------------------------------------------------------------------|
| 1         | `kill -L`            | List all the available signal names that the `kill` command can send to processes.                         |
| 2         | `kill SIGHUP <process_id>` | Instruct a process to reload its configuration without restarting.                                        |
| 3         | `pgrep -a bash`       | Searches for all running processes with the name `bash` and displays both the process ID (PID) and the full command line used to start those processes. |
| 4         | `pkill -KILL bash`    | Immediately kills all processes named `bash`, including interactive shell sessions and any scripts running in `bash`. |


![ps_management_131.png](rhcsa_images/ps_management_131.png)

![ps_management_132.png](rhcsa_images/ps_management_132.png)

![ps_management_133.png](rhcsa_images/ps_management_133.png)

![ps_management_134.png](rhcsa_images/ps_management_134.png)

![ps_management_135.png](rhcsa_images/ps_management_135.png)

if you are running vim editor, press ctrl +z  then it will be exited

when press fg(foreground), it will come back on front from background

![ps_management_136.png](rhcsa_images/ps_management_136.png)

To put a task in background: Use command of that task to be put in background  with “&” symbol

using “jobs” command, we can see background command running

![ps_management_137.png](rhcsa_images/ps_management_137.png)

fg bring background or stopped to the foreground

![ps_management_138.png](rhcsa_images/ps_management_138.png)

bg [process id] resume a stopped job in background

![ps_management_139.png](rhcsa_images/ps_management_139.png)

lsof(list open file) are list of files that are currently open by processes.

![ps_management_140.png](rhcsa_images/ps_management_140.png)

![ps_management_141.png](rhcsa_images/ps_management_141.png)

**Locate and Analyze System Logs file:**

| S.N.O | Command                          | Use                                                                                                                    |
|-------|----------------------------------|------------------------------------------------------------------------------------------------------------------------|
| 1     | /var/log                         | Log file generated by system, services, application                                                                   |
| 2     | /var/log/syslog                  | System log for Debian/Ubuntu                                                                                           |
| 3     | /var/log/messages                | System log for RHEL/CentOS/Amazon Linux                                                                                |
| 4     | /var/log/auth.log                | Authentication log, successful and failed attempt; for Debian/Ubuntu                                                   |
| 5     | /var/log/secure                  | Security-related log such as login attempts and sudo usage; used in RHEL/CentOS/Amazon Linux                           |
| 6     | /var/log/dmesg                   | Hardware-related messages                                                                                              |
| 7     | /var/log/boot.log                | Logs from the system boot process                                                                                      |
| 8     | `/var/log/httpd/` or `/var/log/apache2/` | Logs for the Apache web server (depending on the distribution)                                   |
| 9     | /var/log/nginx/                  | Logs for the Nginx web server                                                                                          |
| 10    | /var/log/yum.log                 | Logs for the `yum` package manager (RHEL/CentOS systems) detailing package installations, updates, and removals        |
| 11    | /var/log/apt/                    | Logs related to the apt package manager (Debian/Ubuntu systems)                                                        |
| 12    | /var/log/cron                    | Logs related to cron jobs (scheduled tasks)                                                                            |
| 13    | /var/log/kern.log                | Kernel-related logs, especially hardware and driver-related issues (often found on **Debian/Ubuntu** systems)          |
| 14    | /var/log/journal/                | Logs managed by `systemd` (used on many modern Linux distributions)                                                    |
| 15    | /var/log/mail.*                  | Logs related to mail server activities                                                                                |
| 16    | `sudo grep -r 'ssh' /var/log`    | Searches for occurrences of the string "ssh" in all files within the `/var/log` directory recursively, displaying matches |
| 17    | `sudo less /var/log/secure`      | Allows you to view the contents of the `secure` log file, which contains security-related logs like SSH authentication attempts and sudo command usage |
| 18    | less /var/log/messages           | Opens the log file in a paginated view, allowing you to scroll through the logs to check system events, warnings, or errors |
| 20    | tail -F                          | Automatically detects if the file is moved, renamed, or recreated (as in log rotation) and continues to follow the new file |
| 21    | -F option                        | Ideal for monitoring log files that are subject to regular rotation or replacement, such as those in `/var/log`         |
| 22    | tail -F /var/log/secure          | **Follows the secure log file** in real-time                                                                          |

![locate_and_analyze_142.png](rhcsa_images/locate_and_analyze_142.png)

![locate_and_analyze_143.png](rhcsa_images/locate_and_analyze_143.png)

![locate_and_analyze_144.png](rhcsa_images/locate_and_analyze_144.png)

![locate_and_analyze_145.png](rhcsa_images/locate_and_analyze_145.png)

![locate_and_analyze_146.png](rhcsa_images/locate_and_analyze_146.png)

![locate_and_analyze_147.png](rhcsa_images/locate_and_analyze_147.png)

![locate_and_analyze_148.png](rhcsa_images/locate_and_analyze_148.png)

![locate_and_analyze_149.png](rhcsa_images/locate_and_analyze_149.png)


| S.N.O | Command                            | Use                                                                                                                                                                              |
|-------|------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1     | `journalctl`                       | Used to query and view logs collected by the **systemd journal**, which is responsible for collecting system logs. It provides a powerful and flexible way to inspect logs, including system boot messages, application logs, kernel messages, and more. |
| 2     | `sudo journalctl /usr/bin/sudo`    | Displays logs specifically related to the **`/usr/bin/sudo`** binary, showing all recorded `sudo` activities.                                                                    |
| 3     | `sudo journalctl -u sshd.service`  | Views logs related specifically to the **`sshd` service** (the OpenSSH server daemon). It shows all entries for the `sshd.service` unit, including service start, stop, authentication attempts, and connection details. |


![journalctl_150.png](rhcsa_images/journalctl_150.png)

![journalctl_151.png](rhcsa_images/journalctl_151.png)

![journalctl_152.png](rhcsa_images/journalctl_152.png)

![journalctl_153.png](rhcsa_images/journalctl_153.png)

**Common Option for Journalctl:**

| S.N.O | Command | Use |
|-------|---------|------|
| 1     | `journalctl -f` | Follow logs in real-time |
| 2     | `journalctl -b` | Show logs for the current boot |
| 3     | `journalctl -u sshd.service` | Show logs for a specific service |
| 4     | `journalctl --since=today` | Filter logs by time |
| 5     | `journalctl --since "2024-10-10 12:00" --until "2024-10-11 14:00"` | Filter logs between two dates |
| 6     | `journalctl -k` | Show kernel logs |
| 7     | `journalctl /usr/bin/sudo` | Show logs for a specific executable |
| 8     | `journalctl _UID=1000` | View logs for a specific user |
| 9     | `journalctl -n 20` | Limit the number of output lines |
| 10    | `journalctl -p err` | View priority-level logs |
| 11    | `journalctl -e` | Jump to the end of log |

### Priority Levels

- `emerg` (0): Emergency
- `alert` (1): Alert
- `crit` (2): Critical
- `err` (3): Error
- `warning` (4): Warning
- `notice` (5): Notice
- `info` (6): Informational
- `debug` (7): Debugging

![journalctl_154.png](rhcsa_images/journalctl_154.png)

![journalctl_155.png](rhcsa_images/journalctl_155.png)

![journalctl_156.png](rhcsa_images/journalctl_156.png)

![journalctl_157.png](rhcsa_images/journalctl_157.png)

![journalctl_158.png](rhcsa_images/journalctl_158.png)

The command `journalctl -p info -g '^b'` is used to shows logs of **info priority** (or higher) that start with the letter 'b'.

![journalctl_159.png](rhcsa_images/journalctl_159.png)

![journalctl_160.png](rhcsa_images/journalctl_160.png)

The command `journalctl -S 02:00` is used to display system logs starting from **2:00 AM** of the current day.

![journalctl_161.png](rhcsa_images/journalctl_161.png)

The command `journalctl -S 02:17 -U 02:28` is used to etrieves logs **from 2:17 AM to 2:28 AM** on the current day.

![journalctl_162.png](rhcsa_images/journalctl_162.png)

![journalctl_163.png](rhcsa_images/journalctl_163.png)

The command `journalctl -b 0` is used to display system logs from the **current boot**.

![journalctl_164.png](rhcsa_images/journalctl_164.png)

![journalctl_165.png](rhcsa_images/journalctl_165.png)

The error message **"no persistent journal was found"** indicates that your system does not have persistent logging enabled, meaning logs are cleared after a reboot.

![journalctl_166.png](rhcsa_images/journalctl_166.png)

To enable persistent logging:

![journalctl_167.png](rhcsa_images/journalctl_167.png)

After enabling persistent logging, `journalctl` will save logs to disk, and you should be able to retrieve logs from previous boots using `journalctl -b -1` (for the last boot).

The `last` command is used to display a list of the most recent logins and reboots on a Linux system. It reads from the `/var/log/wtmp` file, which stores login records.

![journalctl_168.png](rhcsa_images/journalctl_168.png)

The `lastlog` command is used to display information about the **most recent login** of all users on a Linux system. It reads from the `/var/log/lastlog` file, which stores information about the last login for each user.

![journalctl_169.png](rhcsa_images/journalctl_169.png)

# Manage Tuning Profiles:

Tuned is a system tuning tool that helps optimize system performance by dynamically adjusting various parameter based on the current workload.

![manage_tuning_profile_170.png](rhcsa_images/manage_tuning_profile_170.png)

![manage_tuning_profile_171.png](rhcsa_images/manage_tuning_profile_171.png)

![manage_tuning_profile_172.png](rhcsa_images/manage_tuning_profile_172.png)

| **S.N.O** | **Command** | **Use** |
| --- | --- | --- |
| 1 | `tuned-adm active` | To check the active **tuned** profile |
| 2 | `tuned-adm verify` | Checks whether the current system settings match the active **tuned** profile |
| 3 | `ls /usr/lib/tuned` | Lists the contents of the `/usr/lib/tuned` directory, which usually contains the available profiles and plugins for **tuned** |
| 4 | `ls /etc/tuned` | Lists the contents of the `/etc/tuned` directory, which typically contains custom configurations or overrides for **tuned** profiles |
| 5 | `tuned-adm list` | Displays a list of all available tuning profiles on your system |
| 6 | `sudo tuned-adm profile balanced` | General-purpose profile that provides a good compromise between performance and power saving. It's usually the default profile in many Linux distributions. |
| 7 | `sudo tuned-adm profile_info <profile_name>` | Specific tuning profile used by the `tuned` service, which optimizes system performance for various workloads |
| 8 | `sudo tuned-adm recommend` | Suggests the most suitable performance tuning profile based on your system's hardware and workload characteristics. |
| 9 | `sudo tuned-adm auto_profile` | Enables or disables the automatic selection of a tuning profile based on the system's characteristics and usage. When enabled, the `tuned` service dynamically adjusts the profile to match the system's current workload or hardware changes. |
| 10 | `sudo tuned-adm profile_mode` | Command that adjusts system performance based on predefined tuning profiles in Linux. It switches between performance modes like power-saving, throughput, or low-latency to optimize system resources for different workloads. |
| 11 | `sudo tuned-adm profile throughput-performance` | Applies the "throughput-performance" profile in Linux, which is optimized for maximum data throughput. This profile adjusts system settings like CPU frequency scaling and I/O scheduler to enhance performance for high-throughput workloads such as networking and disk operations. |
| 12 | Dynamic tuning | When enabled (`1`), allows the system to automatically adjust certain performance parameters based on current system load. Since it is set to `0`, the system will not dynamically adjust its performance settings, and will rely solely on the static profile you've set, such as `throughput-performance` or others you may configure. |

![manage_tuning_profile_173.png](rhcsa_images/manage_tuning_profile_173.png)

![manage_tuning_profile_174.png](rhcsa_images/manage_tuning_profile_174.png)

![manage_tuning_profile_175.png](rhcsa_images/manage_tuning_profile_175.png)

![manage_tuning_profile_176.png](rhcsa_images/manage_tuning_profile_176.png)

![manage_tuning_profile_177.png](rhcsa_images/manage_tuning_profile_177.png)

![manage_tuning_profile_178.png](rhcsa_images/manage_tuning_profile_178.png)

![manage_tuning_profile_179.png](rhcsa_images/manage_tuning_profile_179.png)

![manage_tuning_profile_180.png](rhcsa_images/manage_tuning_profile_180.png)

![manage_tuning_profile_181.png](rhcsa_images/manage_tuning_profile_181.png)

![manage_tuning_profile_182.png](rhcsa_images/manage_tuning_profile_182.png)

# List, Create, Delete,and Modify Physical Storage Partitions:
Added ebs volume to aws ec2 instance to perform fdisk and cfdisk.

lsblk: display block device information , their partitons and mountpoint

![manage_tuning_profile_183.png](rhcsa_images/manage_tuning_profile_183.png)

fdisk(Flexible Disk): to create MBR and GPT partition of disk using command line tool.

cfdisk(curses-based fdisk): user-friendly , interactive, menu driven partition tool that uses text based ui

![physical_storage_partiton_184.png](rhcsa_images/physical_storage_partiton_184.png)

n: new partition

w: write

