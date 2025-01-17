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

![fdisk_and_cfdisk_185.png](rhcsa_images/fdisk_and_cfdisk_185.png)

![fdisk_and_cfdisk_186.png](rhcsa_images/fdisk_and_cfdisk_186.png)

![fdisk_and_cfdisk_187.png](rhcsa_images/fdisk_and_cfdisk_187.png)

![fdisk_and_cfdisk_188.png](rhcsa_images/fdisk_and_cfdisk_188.png)

![fdisk_and_cfdisk_189.png](rhcsa_images/fdisk_and_cfdisk_189.png)

![fdisk_and_cfdisk_190.png](rhcsa_images/fdisk_and_cfdisk_190.png)

After select yes then select quit

![fdisk_and_cfdisk_191.png](rhcsa_images/fdisk_and_cfdisk_191.png)

# Configure and Manage Swap Space:

## 1. Check existing Swap Space:

| **S.N.O** | **Command**  | **Use** |
| --- | --- | --- |
| 1 | swapon - -show | list active swap areas |
| 2 | lsblk | view block devices and their usage |

![swap_space_192.png](rhcsa_images/swap_space_192.png)

## 2. Create and Enable Swap on a Partition:

| **S.N.O** | **Command** | **Use** |
| --- | --- | --- |
| 1. | sudo mkswap /dev/vdb3 | Create  on partition |
| 2. | sudo swapon - -verbose /dev/vdb3 | Enable swap |
| 3. | sudo swapoff /dev/vdb3 | Disable swap |
| 4. | sudo dd if=/dev/zero of=/swap bs=1M count=2048 status=progress | Create a 2GB Swap File |
| 5. | sudo chmod 600 /swap | Set correct permission |

![swap_space_193.png](rhcsa_images/swap_space_193.png)

![swap_space_194.png](rhcsa_images/swap_space_194.png)

![swap_space_195.png](rhcsa_images/swap_space_195.png)

![swap_space_196.png](rhcsa_images/swap_space_196.png)

![swap_space_197.png](rhcsa_images/swap_space_197.png)

![swap_space_198.png](rhcsa_images/swap_space_198.png)

![swap_space_199.png](rhcsa_images/swap_space_199.png)

### Summary:

- You have a 2GB swap partition (`/dev/nvme1n1p1`) and a 2GB swap file (`/swap`) configured.
- Swap areas were managed and configured using `swapon`, `swapoff`, `mkswap`, and `dd` commands.
- You can prioritize swap areas by adjusting the `PRIO` value.

## **Manage and Configure LVM storage:**

LVM provides a flexible way to manage disk storage by allowing administrators to dynamically allocate, resize, and manage disk space without rebooting the system.

### 1. Understanding LVM Components:

- Physical Volume(PV) : The physical storage device, like a disk or partition, initialised for LVM use.
- Volume Group(VG) : A pool of storage that combines multiple physical volumes. Logical volumes are created from this pool.
- Logical Volume(LV) : A virtual partition from the volume group, which you can mount and use as a regular file system.

### 2. Creating and Configuring LVM

## 1. Creating a Physical Volume:

![lvm_storage_200.png](rhcsa_images/lvm_storage_200.png)

- Install local volume manger using lvm2 package.

![lvm_storage_201.png](rhcsa_images/lvm_storage_201.png)

![lvm_storage_202.png](rhcsa_images/lvm_storage_202.png)

![lvm_storage_203.png](rhcsa_images/lvm_storage_203.png)

## b. Creating a Volume Group(VG):

![lvm_storage_204.png](rhcsa_images/lvm_storage_204.png)

![lvm_storage_205.png](rhcsa_images/lvm_storage_205.png)

## c) Creating a Logical Volume:

![lvm_storage_206.png](rhcsa_images/lvm_storage_206.png)

## d) **Formatting and Mounting the Logical Volume:**

### 1. Format the LV:

![format_lv_207.png](rhcsa_images/format_lv_207.png)

![format_lv_208.png](rhcsa_images/format_lv_208.png)

### ii) Mount the LV:

![mount_lv_209.png](rhcsa_images/mount_lv_209.png)

### iii) Persist the Mount Point:  it to `/etc/fstab` to mount it automatically on boot

![persist_mount_lv_210.png](rhcsa_images/persist_mount_lv_210.png)

![persist_mount_lv_211.png](rhcsa_images/persist_mount_lv_211.png)

## 3. **Resizing Logical Volumes**

### i. Extend a Logical Volume:

![extend_lv_212.png](rhcsa_images/extend_lv_212.png)

### ii) Reduce a Logical Volume (Be Careful):

Step to reduce an XFS Logical Volume:

a. **Back Up Data: We have no data in logical volume**

```bash
sudo mkdir /backup
sudo rsync -a /mnt/my_lv/ /backup/

```
b. Unmount the LV:

![unmount_lv_213.png](rhcsa_images/unmount_lv_213.png)

c.  Remove the existing Logical Volume:

![remove_existing_lv_214.png](rhcsa_images/remove_existing_lv_214.png)

d) Recreate the Logical Volume with smaller size:

![recreate_lv_215.png](rhcsa_images/recreate_lv_215.png)

e) Format and Mount the New Logical Volume with XFS:

![format_and_mount_newlv_216.png](rhcsa_images/format_and_mount_newlv_216.png)

**f) Restore Data:**

```bash
sudo rsync -a /backup/ /mnt/my_lv/

```
### Commands used in LVM:


| Step No. | Task | Command | Description |
| --- | --- | --- | --- |
| **2** | **Creating and Configuring LVM** |  |  |
| a | Creating a Physical Volume (PV) | `sudo pvcreate /dev/sdb` | Initializes `/dev/sdb` as a physical volume for LVM. |
| b | Creating a Volume Group (VG) | `sudo vgcreate my_vg /dev/sdb` | Creates a volume group named `my_vg` using the `/dev/sdb` physical volume. |
| c | Creating a Logical Volume (LV) | `sudo lvcreate -L 10G -n my_lv my_vg` | Creates a 10GB logical volume named `my_lv` within the volume group `my_vg`. |
| d | Formatting and Mounting the LV | `sudo mkfs.xfs /dev/my_vg/my_lv` | Formats the logical volume with the XFS filesystem. |
|  |  | `sudo mkdir /mnt/my_lv` | Creates a directory to mount the logical volume. |
|  |  | `sudo mount /dev/my_vg/my_lv /mnt/my_lv` | Mounts the logical volume at `/mnt/my_lv`. |
|  | Persist the Mount Point | `/dev/my_vg/my_lv /mnt/my_lv xfs defaults 0 0` | Adds entry to `/etc/fstab` to mount automatically on boot. |
| **3** | **Resizing Logical Volumes** |  |  |
|  | Extend a Logical Volume | `sudo lvextend -L +5G /dev/my_vg/my_lv` | Increases LV size by 5GB. |
|  |  | `sudo resize2fs /dev/my_vg/my_lv` | Adjusts filesystem size (for ext4). |
|  |  | `sudo xfs_growfs /mnt/my_lv` | Adjusts filesystem size (for XFS). |
|  | Reduce a Logical Volume | `sudo umount /mnt/my_lv` | Unmounts the logical volume. |
|  |  | `sudo resize2fs /dev/my_vg/my_lv 5G` | Shrinks filesystem to 5GB (for ext4). |
|  |  | `sudo lvreduce -L 5G /dev/my_vg/my_lv` | Reduces the LV size to 5GB. |
|  |  | `sudo mount /dev/my_vg/my_lv /mnt/my_lv` | Mounts the LV again. |
| **4** | **Managing Volume Groups and Physical Volumes** |  |  |
|  | Extend Volume Group | `sudo pvcreate /dev/sdc` | Initializes a new physical volume `/dev/sdc`. |
|  |  | `sudo vgextend my_vg /dev/sdc` | Adds `/dev/sdc` to `my_vg`. |
|  | Remove Physical Volume | `sudo pvmove /dev/sdb` | Moves data off `/dev/sdb`. |
|  |  | `sudo vgreduce my_vg /dev/sdb` | Removes `/dev/sdb` from `my_vg`. |
|  |  | `sudo pvremove /dev/sdb` | Deletes the physical volume `/dev/sdb`. |
| **5** | **Useful Commands for Monitoring and Management** |  |  |
|  | View PVs, VGs, LVs | `sudo pvs` / `sudo vgs` / `sudo lvs` | Lists PVs, VGs, and LVs. |
|  | Detailed Information | `sudo pvdisplay /dev/sdb` | Shows detailed info for `/dev/sdb`. |
|  |  | `sudo vgdisplay my_vg` | Shows detailed info for `my_vg`. |
|  |  | `sudo lvdisplay /dev/my_vg/my_lv` | Shows detailed info for `my_lv`. |
|  | Removing LVM Components | `sudo lvremove /dev/my_vg/my_lv` | Deletes logical volume `my_lv`. |
|  |  | `sudo vgremove my_vg` | Deletes volume group `my_vg`. |
|  |  | `sudo pvremove /dev/sdb` | Deletes physical volume `/dev/sdb`. |

### Best Practices

- Always unmount logical volumes before resizing or deleting them.
- Backup important data before performing LVM operations, especially resizing and deletion.
- Use the `pvmove` command to safely migrate data from one physical volume to another within the same volume group.

## Create and Configure Encrypted Storage:

### 1. **Install cryptsetup** (if not already installed):

![encrypted_storage_217.png](rhcsa_images/encrypted_storage_217.png)

![encrypted_storage_218.png](rhcsa_images/encrypted_storage_218.png)

### 2. **Encrypt the Disk**:

![encrypted_storage_219.png](rhcsa_images/encrypted_storage_219.png)

### 3. **Format the Encrypted Disk**:

![encrypted_storage_220.png](rhcsa_images/encrypted_storage_220.png)

### 4. **Mount the Encrypted Disk**:

![encrypted_storage_221.png](rhcsa_images/encrypted_storage_221.png)

### 5. **Unmount and Close the Encrypted Disk**:

![encrypted_storage_222.png](rhcsa_images/encrypted_storage_222.png)

![encrypted_storage_223.png](rhcsa_images/encrypted_storage_223.png)

## Creating and Managing Raid(Redundant Array of Independent Disks) Devices

**RAID** is a way of storing data in different places(redundantly) on multiple hard disks to improve performance and data reliability.

**Array:** 

An array is a group of two or more combined disks to form a single storage unit . Data is spread across these disks based on the RAID configuration.

**RAID Level:**

A RAID Level defines how data is stored in the array. Every level(like RAID 0 , RAID 1 , RAID 5)  has a specific method of distributing and protecting data , balancing performance , storage capacity and redundancy.

**Parity:**

 Parity is a way to protect data by storing extra information. If one disk fails, the parity data helps recreate the lost data without needing all the original disks.

Here's a tabular comparison of the different RAID levels:

| **RAID Level** | **Minimum Disks Required** | **Purpose** | **Fault Tolerance** |
| --- | --- | --- | --- |
| RAID 0 | 2 | Increases performance (no redundancy) | None – failure of any disk results in data loss |
| RAID 1 | 2 | Mirroring for redundancy | 1 disk failure |
| RAID 5 | 3 | Balances redundancy and performance | 1 disk failure |
| RAID 6 | 4 | Double parity for enhanced redundancy | 2 disk failures |
| RAID 10 | 4 (must be even) | High performance and redundancy (RAID 1 + 0) | Multiple disks, as long as each mirrored pair has one working disk |

### 1. RAID Setup Requirement:
- Install the `mdadm` utility to create and manage RAID devices.

![raid_224.png](rhcsa_images/raid_224.png)

### 2. Creating a RAID Array:

#### a. RAID 1 Example (Mirrored Array):

![raid_225.png](rhcsa_images/raid_225.png)

![raid_226.png](rhcsa_images/raid_226.png)

#### b) Verify the RAID Array:

![raid_227.png](rhcsa_images/raid_227.png)

![raid_228.png](rhcsa_images/raid_228.png)

#### c)  **Formatting and Mounting the RAID Device**

- Format the RAID device with a filesystem (e.g., ext4):

![raid_229.png](rhcsa_images/raid_229.png)

- Create a mount point and mount the RAID device:

![raid_230.png](rhcsa_images/raid_230.png)

#### c) To make the RAID array mount at boot, add it to `/etc/fstab`:

![raid_231.png](rhcsa_images/raid_231.png)

#### d) Managing the RAID Array:

-  Stop the Raid Array(if needed)

![raid_232.png](rhcsa_images/raid_232.png)

![raid_233.png](rhcsa_images/raid_233.png)

#### e) **. Add/Remove Disks from RAID**:

- **Add** a new disk:
    
```bash
    sudo mdadm --manage /dev/md0 --add /dev/sdd
```
    
- **Remove** a disk:
    
```bash
    sudo mdadm --manage /dev/md0 --fail /dev/sdb
    sudo mdadm --manage /dev/md0 --remove /dev/sdb
    
```

#### f) **Monitoring and Maintaining RAID**

- **Check RAID Status**:
    
```bash
    cat /proc/mdstat
```
    
- **Send Email Alerts** (configure in `/etc/mdadm/mdadm.conf`):
    
```bash
    sudo mdadm --monitor --scan --mail=user@example.com --delay=300 --syslog
```
    
- **Assemble RAID on Reboot** (ensure it’s configured in `/etc/mdadm/mdadm.conf`):
    
```bash
    sudo mdadm --detail --scan | sudo tee -a /etc/mdadm/mdadm.conf
```
### **Best Practices**

- Always back up data before making changes.
- Monitor RAID status regularly.
- Use a UPS to prevent data corruption in case of power failure.

RAID offers robust data protection but does not replace regular backups, as it primarily ensures data availability and redundancy.

## Create, Manage and Diagnose Advanced Filesystem Permissions:

### Access Control Lists:

ACL allows you to set permissions for individual users or groups beyond just the owner, group and others.

**Key ACL Concepts:**

1. ACL Types
    - Access ACL: Set permissions on files and directories for users and groups.
    - Default ACL: Set default permissions for new files/directories created within a directory.
2.  Basic Permissions: Like standard permissions, ACLs use read(r), write(w), and execute(x) permissions.

![acl_234.png](rhcsa_images/acl_234.png)

ACL Commands:

#### a.  Set ACL:

```bash
setfacl -m u:username:permissions filesname
```

![acl_235.png](rhcsa_images/acl_235.png)

+mark indicates it is an acl

#### b. **View ACL**:

![acl_236.png](rhcsa_images/acl_236.png)
mask is maximum permission allowed that can be granted to user.

Modify Mask:

![acl_237.png](rhcsa_images/acl_237.png)

The term **effective** in ACLs represents the actual permissions that are applied to a user or group after the **mask** is taken into account.

### Set ACL for a Group

![acl_238.png](rhcsa_images/acl_238.png)

### Remove ACL permission for user:

![acl_239.png](rhcsa_images/acl_239.png)

![acl_240.png](rhcsa_images/acl_240.png)

![acl_241.png](rhcsa_images/acl_241.png)

### Change Recurssively:

![acl_242.png](rhcsa_images/acl_242.png)

![acl_243.png](rhcsa_images/acl_243.png)

![acl_244.png](rhcsa_images/acl_244.png)

### Append Attribute to a file:

![acl_245.png](rhcsa_images/acl_245.png)

![acl_246.png](rhcsa_images/acl_246.png)

### list attribute for a file:

![acl_247.png](rhcsa_images/acl_247.png)

![acl_248.png](rhcsa_images/acl_248.png)

![acl_249.png](rhcsa_images/acl_249.png)

## **User and Group Disk Quotas For Filesystem:**

Limiting disk usage per user and group on a specified filesystem.

### 1. Install Quota Package:

![disk_quota_filesystem_250.png](rhcsa_images/disk_quota_filesystem_250.png)

![disk_quota_filesystem_251.png](rhcsa_images/disk_quota_filesystem_251.png)

### 2. Edit /etc/fstab:

![disk_quota_filesystem_252.png](rhcsa_images/disk_quota_filesystem_252.png)

![disk_quota_filesystem_253.png](rhcsa_images/disk_quota_filesystem_253.png)

![disk_quota_filesystem_254.png](rhcsa_images/disk_quota_filesystem_254.png)

![disk_quota_filesystem_255.png](rhcsa_images/disk_quota_filesystem_255.png)

![disk_quota_filesystem_256.png](rhcsa_images/disk_quota_filesystem_256.png)

### 3. **Reboot the System**:

![disk_quota_filesystem_257.png](rhcsa_images/disk_quota_filesystem_257.png)

### 4. **Initialize Quota Files**:

**Enable User and Group Quotas**:

![disk_quota_filesystem_258.png](rhcsa_images/disk_quota_filesystem_258.png)


**Verify Quotas with `report`**:

![disk_quota_filesystem_259.png](rhcsa_images/disk_quota_filesystem_259.png)

**Set User Quota**:

1.

![disk_quota_filesystem_260.png](rhcsa_images/disk_quota_filesystem_260.png)

2.

![disk_quota_filesystem_261.png](rhcsa_images/disk_quota_filesystem_261.png)

![disk_quota_filesystem_262.png](rhcsa_images/disk_quota_filesystem_262.png)

- Edit the quota to specify soft and hard limits for ec2-user on `/dev/nvme2n1`.

**Check User Quota**:

![disk_quota_filesystem_263.png](rhcsa_images/disk_quota_filesystem_263.png)

![disk_quota_filesystem_264.png](rhcsa_images/disk_quota_filesystem_264.png)

- Soft and hard limits control how much disk space the user can use (soft limit with grace period, hard limit as an absolute max).

**Test Quota Limits**:

- Create files to test quota limit:

![disk_quota_filesystem_265.png](rhcsa_images/disk_quota_filesystem_265.png)

- Check current quotas:

![disk_quota_filesystem_266.png](rhcsa_images/disk_quota_filesystem_266.png)

### Create and Configure File Systems:

mkfs.xfs : XFS Filesystem

mkfs.ext4: ext4 Filesystem

1. Creating an XFS File System:

![configure_filesystem_267.png](rhcsa_images/configure_filesystem_267.png)

2. Creating an EXT4 File System:

![configure_filesystem_268.png](rhcsa_images/configure_filesystem_268.png)

### Remove File System:

a) XFS:

![configure_filesystem_269.png](rhcsa_images/configure_filesystem_269.png)

b) ext4:

![configure_filesystem_270.png](rhcsa_images/configure_filesystem_270.png)

### 1. Various flags for XFS and EXT4 file system:

a) Create Label for disk using XFS:

![configure_filesystem_271.png](rhcsa_images/configure_filesystem_271.png)

b) Display current label for XFS:

![configure_filesystem_272.png](rhcsa_images/configure_filesystem_272.png)

c) Change Label of XFS:

![configure_filesystem_273.png](rhcsa_images/configure_filesystem_273.png)

d) Create Label and inode for ext4:

![configure_filesystem_274.png](rhcsa_images/configure_filesystem_274.png)

e) Change Label for ext4:

![configure_filesystem_275.png](rhcsa_images/configure_filesystem_275.png)

f) Man Page of ext4 and xfs:

![configure_filesystem_276.png](rhcsa_images/configure_filesystem_276.png)

![configure_filesystem_277.png](rhcsa_images/configure_filesystem_277.png)

## **Create, Mount, and use vfat File Systems:**

vfat32: Virtual File Allocation Table

### 1. Create a `vfat` File System :

Step 1: Identify the Disk/Partition

![vfat_278.png](rhcsa_images/vfat_278.png)

![vfat_279.png](rhcsa_images/vfat_279.png)

Step 2: Create the `vfat` File System:

Created one partition on 10G using fdisk

![vfat_280.png](rhcsa_images/vfat_280.png)

- Use `n` to create a new partition.
- Press `t` to change the partition type, then enter `b` for W95 FAT32.

`F 32` specifies FAT32, which supports larger file systems (up to 16TB with 4096-byte sector size).

- **Choosing the Right FAT Type**:
    - Use **FAT16** for volumes up to 2GB.
    - Use **FAT32** for volumes larger than 2GB.
### 2. Mount the `vfat` File System:

Step 1: Create a Mount Point:

![vfat_281.png](rhcsa_images/vfat_281.png)

Step 2: Mount the File System:

![vfat_282.png](rhcsa_images/vfat_282.png)

### **3. Persistent Mount via /etc/fstab**:

![vfat_283.png](rhcsa_images/vfat_283.png)

Add the following line to automatically mount at boot:

![vfat_284.png](rhcsa_images/vfat_284.png)

### 4. **Unmount the File System**:

![vfat_285.png](rhcsa_images/vfat_285.png)

### 5. Integrity Checks for vfat File Systems:

Step1: **Check File System Integrity**:

Use dosfsck to check for errors:

![vfat_286.png](rhcsa_images/vfat_286.png)

## Configure Systems to Mount File systems At or During Boot:

## Step-by-Step Guide

### 1. **Create a Mount Point (if not existing):**

```jsx
sudo mkdir /mybackups
```

### 2. **Mount the Filesystem Temporarily (to verify):**

```bash
sudo mount /dev/vdb1 /mnt/
sudo touch /mnt/testfile
ls -l /mnt/
sudo umount /mnt/
```
### 3. **Edit `/etc/fstab` to Add Filesystem Entries:**
Open the `/etc/fstab` file with a text editor:
    
```bash
sudo vim /etc/fstab
```
Add entries similar to the following, adjusting for device names, mount points, and filesystem types:

```bash
/dev/vdb1 /mybackups xfs defaults 0 2
/dev/vdb2 /mybackups ext4 defaults 0 2

```
Alternatively, you can use the UUID instead of device names for more reliability:

```bash
UUID=9ab8cfa5-2813-4b70-ada0-7abd0ad9d289 /mybackups xfs defaults 0 0
```
- **`0` (Fifth Field)**: This filesystem will not be included in the backup routine.
- **`2` (Sixth Field)**: `fsck` will check this filesystem after checking the root filesystem.

### Field 6: Filesystem Check Order

The sixth field determines the order in which `fsck` (filesystem check) runs during boot to check the integrity of the filesystem. The `fsck` command is used to detect and fix filesystem errors.

- **Value of `0`**: Do not check the filesystem at boot.
- **Value of `1`**: Check this filesystem first (used for critical filesystems like root `/`).
- **Value of `2`**: Check this filesystem after the root filesystem (used for non-root filesystems).
    
### **4. Reload `systemd` Daemon (if on a `systemd`based system):**

```bash
sudo systemctl daemon-reload
```

- **Test the Configuration:**
    - Reboot the system to check if the mount persists:
```bash
sudo systemctl reboot
```

- After rebooting, verify that the filesystem is mounted:

```bash
lsblk
ls -l /mybackups/
```
## **Configure Disk Compression:(VDO service was part of RHEL8, to use VDO it come under lvm in RHEL9)**

**Virtual Data Optimizer (VDO)** is a tool designed to optimize storage through feature like deduplication, compression and zero block filtering.
          
**Deduplication:** removing duplicate copies of repeating  data to save space.

**Compression:** Reducing the size of data by encoding it in more efficient format to save storage space.

**Zero-block Filtering**: Eliminating block of filtering data that are entirely filled with zeros to reduce storage overhead.

Prerequisite: lvm2 installed already.

To set up VDO (Virtual Data Optimizer) using LVM on RHEL 9, follow these steps:

### **Step 1: Create Physical Volume (PV)**:

![vd0_287.png](rhcsa_images/vd0_287.png)

### Step 2: Create Volume Group (VG):

![vd0_288.png](rhcsa_images/vd0_288.png)

### Step 3: Create Logical Volume (LV) with VDO

Create the logical volume with the `--type vdo` flag.

![vd0_289.png](rhcsa_images/vd0_289.png)

### Step 4: Format and Mount the VDO Volume

- Format the created VDO volume (e.g., `/dev/vg-vdo/lv-vdo`)

![vd0_290.png](rhcsa_images/vd0_290.png)

![vd0_291.png](rhcsa_images/vd0_291.png)

#### 2. Create a mount point and mount the volume.

![vd0_292.png](rhcsa_images/vd0_292.png)

### Step 5: Configure Auto-Mount on Boot

- 1. Get the UUID of the VDO volume.

![vd0_293.png](rhcsa_images/vd0_293.png)

- 2. Add an entry to `/etc/fstab` to ensure the volume is mounted automatically on boot:

![vd0_294.png](rhcsa_images/vd0_294.png)

![vd0_295.png](rhcsa_images/vd0_295.png)

### Summary of Commands:

- sudo pvcreate /dev/nvme2n1
- sudo vgcreate vg-vdo /dev/nvme2n1
- sudo lvcreate --type vdo -n lv-vdo -l 100%FREE /dev/vg-vdo
- sudo mkfs.xfs /dev/vg-vdo/lv-vdo
- sudo mkdir /mnt/vdo
- sudo mount /dev/vg-vdo/lv-vdo /mnt/vdo
- sudo blkid /dev/vg-vdo/lv-vdo

## Manage Layered Storage Using Stratis:

**Managed Layered Storage** simplifies storage management by creating a virtualized storage layer over physical devices.

**Stratis** a storage management tool focusing on managing and deploying layered structure with features like snapshot, thin provisioning , and tiering.

**Snapshot:** Snapshot capture the current state of a filesystem, allowing you to revert to it later if needed, useful for backup and recovery.

**Thin Provisioning:** Thin Provisioning allocates storage on demand, optimizing space by only using capacity as data is written, rather than pre-allocationg all storage.

**Tiering:** Tiering automatically moves data between faster and slower storage based on usage, balancing performance, cost by storing frequently accessed data on faster disks. 

### 1. Installing Stratis:

![stratis_296.png](rhcsa_images/stratis_296.png)

![stratis_297.png](rhcsa_images/stratis_297.png)

### 2.  **Creating a Stratis Pool**:

Create a pool with one or multiple devices:

![stratis_298.png](rhcsa_images/stratis_298.png)

![stratis_299.png](rhcsa_images/stratis_299.png)

List pool details:

![stratis_300.png](rhcsa_images/stratis_300.png)

### 3. **Creating a Filesystem**:

Create a file system in the pool:

![stratis_301.png](rhcsa_images/stratis_301.png)

- View filesystem details:

![stratis_302.png](rhcsa_images/stratis_302.png)

### 4. **Mounting the Filesystem**:

- a. **Create a Mount Directory**:

![stratis_303.png](rhcsa_images/stratis_303.png)

- b. **Edit the `/etc/fstab` File**:

  - To ensure the filesystem mounts automatically on boot, add an entry to `/etc/fstab`.
  - Open `/etc/fstab` in a text editor, such as `vi` or `nano`.

![stratis_304.png](rhcsa_images/stratis_304.png)

![stratis_305.png](rhcsa_images/stratis_305.png)

![stratis_306.png](rhcsa_images/stratis_306.png)

- c. **Verify the Mount**:

![stratis_307.png](rhcsa_images/stratis_307.png)

![stratis_308.png](rhcsa_images/stratis_308.png)

![stratis_309.png](rhcsa_images/stratis_309.png)

- d. **Copy Data to /mnt/mystratis:**:

![stratis_310.png](rhcsa_images/stratis_310.png)

![stratis_311.png](rhcsa_images/stratis_311.png)

## **Adding Storage Devices To the Stratis Pool:**

```bash
sudo stratis pool add-data my-pool /dev/vdd
```

## **Filesystem Snapshots With Stratis**:

### 1. **Create a Snapshot**:

![stratis_312.png](rhcsa_images/stratis_312.png)

### 2. **Verify the Snapshot**:

![stratis_313.png](rhcsa_images/stratis_313.png)

### 3. Delete a File:

![stratis_314.png](rhcsa_images/stratis_314.png)

### 4. **Rename Filesystems to Restore from Snapshot**:

![stratis_316.png](rhcsa_images/stratis_316.png)

![stratis_317.png](rhcsa_images/stratis_317.png)

![stratis_318.png](rhcsa_images/stratis_318.png)

This renames the original filesystem (`mys1`) to `mys1-old` and renames the snapshot (`mys1-snapshot`) back to `myfs1`, effectively restoring the snapshot.

### 5. **Remount the Filesystem**:

![stratis_319.png](rhcsa_images/stratis_319.png)

After unmounting and remounting, the filesystem is now restored to the snapshot state.

## Schedule Tasks To Run At a Set Time

### 1. Cron Job:
- Cron Job are scheduled in the /etc/crontab file or by using the crontab -e command.

![schedule_task_cron_320.png](rhcsa_images/schedule_task_cron_320.png)

```bash
* : Every Possible Value for that time limit.

Specifiers:
, : list specific times(e.g, 15,45 runs at 15 and 45 mins.
- : create a range( e.g. , 2-4 runs from 2 to 4 )
*/n: denotes steps (e.g., */4 runs every 4 hours.
```
- System-wide cron schedules are stored in `/etc/cron.hourly`, `/etc/cron.daily`, `/etc/cron.weekly`, and `/etc/cron.monthly`.

![schedule_task_cron_321.png](rhcsa_images/schedule_task_cron_321.png)

### a. Using sudo vi /etc/crontab:

![schedule_task_cron_322.png](rhcsa_images/schedule_task_cron_322.png)

![schedule_task_cron_323.png](rhcsa_images/schedule_task_cron_323.png)

### b. Using crontab -e:

![schedule_task_cron_324.png](rhcsa_images/schedule_task_cron_324.png)

![schedule_task_cron_325.png](rhcsa_images/schedule_task_cron_325.png)

![schedule_task_cron_326.png](rhcsa_images/schedule_task_cron_326.png)

### Crontab Commands:

- crontab -e: create or edit crontab script

- crontab -l : show cron script on terminal

- crontab -r : delete cron script
 
### Verify script running:

```bash
sudo cat /var/log/cron | grep <script_name>
```
![verify_cron_task_327.png](rhcsa_images/verify_cron_task_327.png)

### 2. Anacron:
- Anacron is for task that run daily, weekly, or monthly but may have not fixed time.
- `Anacron` is preferred for ensuring task completion on systems that do not have guaranteed uptime, whereas `cron` is suited for servers and systems that run continuously.

![anacron_328.png](rhcsa_images/anacron_328.png)

- **Syntax:**

  - The `/etc/anacrontab` file is used tofdefine tasks for `anacron`. The syntax for each entry is:

```bash
period_in_days   delay_in_minutes   job-identifier   command
```

- **`period_in_days`**: Frequency in days to run the job (e.g., `1` for daily, `7` for weekly).
- **`delay_in_minutes`**: The delay (in minutes) before running the job after the system starts.
- **`job-identifier`**: A unique name for the job.
- **`command`**: The command or script to execute.

![anacron_329.png](rhcsa_images/anacron_329.png)

![anacron_330.png](rhcsa_images/anacron_330.png)

- Run `anacron` in test mode to verify: sudo anacron -T

![anacron_331.png](rhcsa_images/anacron_331.png)

### 3. **at Command**
- at is for scheduling one-time tasks.

### Step 1: Install the `at` Package:

![at_332.png](rhcsa_images/at_332.png)

![at_333.png](rhcsa_images/at_333.png)

### Step 2: Start and Enable the `atd` Service:

![at_334.png](rhcsa_images/at_334.png)

![at_335.png](rhcsa_images/at_335.png)

### Step 3: Try the `at` Command

press ctrl+d(signifies end of input)

![at_336.png](rhcsa_images/at_336.png)

### Step 4: Verify the `at` Job

- a. List pending jobs using:

![at_337.png](rhcsa_images/at_337.png)

- b. Remove a job if necessary with:

![at_338.png](rhcsa_images/at_338.png)

- c. Job execution:

![at_339.png](rhcsa_images/at_339.png)

- d. Using at ‘now + time’:

![at_340.png](rhcsa_images/at_340.png)

## Manage Startup Processes and Services:

### 1. System Initialization:
- init system initialize the system and manages startup services.
- Units: The basic object in systemd. Types include:
  - 1. service: Manages processes.
  - 2. socket: Manages inter-process communication.
  - 3. device: Manages device-related events.
  - 4. timer: Handles scheduled tasks.

### Working with services:

- 1. Service Configuration:
  - Configuration files end with .services.
  - Defined sections:
    - a. Unit: General settings ( description, dependencies).
    - b. Service: Process-related configurations( e.g., ExecStart, Restart policies)
    - c. Install: Installations settings(e.g., targets like multi-user.target).

- 2. Viewing and Editing services:

  - a. View service details:

![start_up_process_341.png](rhcsa_images/start_up_process_341.png)

 - b. Edit service configuration:

![start_up_process_342.png](rhcsa_images/start_up_process_342.png)

![start_up_process_343.png](rhcsa_images/start_up_process_343.png)

 - c. Revert to default:

![start_up_process_344.png](rhcsa_images/start_up_process_344.png)

 - d. Show status of service:

![start_up_process_345.png](rhcsa_images/start_up_process_345.png)

 - e. Start and Stop a service:

![start_up_process_346.png](rhcsa_images/start_up_process_346.png)

![start_up_process_347.png](rhcsa_images/start_up_process_347.png)

 - f. **Restart and Reload**:

![start_up_process_348.png](rhcsa_images/start_up_process_348.png)	

![start_up_process_349.png](rhcsa_images/start_up_process_349.png)

 - **g. Enable and Disable**:

![start_up_process_350.png](rhcsa_images/start_up_process_350.png)

![start_up_process_351.png](rhcsa_images/start_up_process_351.png)

 - h. Reload-or-Restart service:

![start_up_process_352.png](rhcsa_images/start_up_process_352.png)

 - i. **Mask and Unmask**
- **Masking** is useful to completely disable services that you don't want running under any circumstances.
- **Unmasking** restores the default behavior of the service, allowing it to be controlled as usual.

![start_up_process_353.png](rhcsa_images/start_up_process_353.png)

![start_up_process_354.png](rhcsa_images/start_up_process_354.png)

## Install and Update Software Packages:

### 1. Subscription Manager:

Subscription Manager is a tool in RHEL used to manage subscription, ensure that you can access Red Hat’s Official Repositories and updates. 

### **Key Commands**

### a. **Register Your System**:

- To access software and updates, register your system with your Red Hat account:
    
```bash
sudo subscription-manager register --username <your-username> --password <your-password>
```

### b. **Attach a Subscription Automatically**: 

Automatically assigns the best-matched subscription to your system:

```bash
sudo subscription-manager attach --auto

```

### **2. Managing Repositories**

### a.  **List active repositories:**

![install_and_update_software_packages_355.png](rhcsa_images/install_and_update_software_packages_355.png)

### b. *Enable a repository:*

```bash
sudo subscription-manager repos --enable <repo-id>
```

![install_and_update_software_packages_356.png](rhcsa_images/install_and_update_software_packages_356.png)

### **c. Disable a repository:**

```bash
sudo subscription-manager repos --disable <repo-id>

```
### **d. Add a custom repository:**

```bash
sudo yum-config-manager --add-repo <repo-url>
```

### **e. View repository details:**

```bash
sudo yum repolist -v
```
![install_and_update_software_packages_357.png](rhcsa_images/install_and_update_software_packages_357.png)


### **f. View all repo:**

```bash
sudo yum repolist --all
```
![install_and_update_software_packages_358.png](rhcsa_images/install_and_update_software_packages_358.png) 

### **3. Managing Packages with `yum`:**

### a. Search for a package:

```bash
sudo yum search <package-name>
sudo yum search 'description'

```

### b. Get package details:

![install_and_update_software_packages_359.png](rhcsa_images/install_and_update_software_packages_359.png)

### c. Install, reinstall, or remove packages:

```bash
sudo yum install <package-name>
sudo yum reinstall <package-name>
sudo yum remove <package-name>

```

### d. Install packages from URL or local file:

```bash
sudo yum install <file-path-or-URL>

```

### e. Autoremove unused dependencies:

```bash
sudo yum autoremove

```

## 4. Group Package Management:

### a. View and manage package groups:

![install_and_update_software_packages_360.png](rhcsa_images/install_and_update_software_packages_360.png)

![install_and_update_software_packages_361.png](rhcsa_images/install_and_update_software_packages_361.png)

![install_and_update_software_packages_362.png](rhcsa_images/install_and_update_software_packages_362.png)

```bash
sudo yum group install '<group-name>'
sudo yum group remove '<group-name>'
```
## 5. **Updating and Upgrading**

- a. Check available updates:

```bash
    sudo yum check-upgrade
```

- b. Update packages:
    
```bash
    sudo yum update
```

## Working With Package Module Streams

- a. List Available Modules:

![install_and_update_software_packages_363.png](rhcsa_images/install_and_update_software_packages_363.png)

- b. List Details for a Specific Module (e.g., maven):

![install_and_update_software_packages_364.png](rhcsa_images/install_and_update_software_packages_364.png)

- c. View Installed Module Streams:

![install_and_update_software_packages_365.png](rhcsa_images/install_and_update_software_packages_365.png)

- d) Switch Streams by Resetting and Reinstalling:

![install_and_update_software_packages_366.png](rhcsa_images/install_and_update_software_packages_366.png)

![install_and_update_software_packages_367.png](rhcsa_images/install_and_update_software_packages_367.png)

## Configure Networking and Hostname:

- Use appropriate IP address, gateway, and other configurations based on your network setup.
- Tools such as `nmcli` can assist with managing network configurations directly from the command line.

### a. Check network connections:

![configure_networking_and_hostname_368.png](rhcsa_images/configure_networking_and_hostname_368.png)

### b. Modify network connection:

![configure_networking_and_hostname_369.png](rhcsa_images/configure_networking_and_hostname_369.png)

## Starting Network Services at Boot:

Ensure the `NetworkManager.service` is enabled and active for managing network connections.

### a. Check status: 

![configure_networking_and_hostname_370.png](rhcsa_images/configure_networking_and_hostname_370.png)

### b. Install Network Manager:

![configure_networking_and_hostname_371.png](rhcsa_images/configure_networking_and_hostname_371.png)

### c. Start and enable:

![configure_networking_and_hostname_372.png](rhcsa_images/configure_networking_and_hostname_372.png) 

## Start, Stop, and Check Network Services

### **Key Commands:**

### **a. Use `ss` to Check Active Network Connections**:

![configure_networking_and_hostname_373.png](rhcsa_images/configure_networking_and_hostname_373.png)

Options:

- `l`: Show listening services.
- `t`: Show TCP connections.
- `u`: Show UDP connections.
- `n`: Display numeric values for addresses and ports.
- `p`: Display process information.

### **2. Using `systemctl` to Manage Services**

- a.  **Check Service Status**:

![configure_networking_and_hostname_374.png](rhcsa_images/configure_networking_and_hostname_374.png)

- b. **Start/Stop a Service**

![configure_networking_and_hostname_375.png](rhcsa_images/configure_networking_and_hostname_375.png)

![configure_networking_and_hostname_376.png](rhcsa_images/configure_networking_and_hostname_376.png)

- c. **Enable/Disable a Service at Boot**

![configure_networking_and_hostname_377.png](rhcsa_images/configure_networking_and_hostname_377.png)

![configure_networking_and_hostname_378.png](rhcsa_images/configure_networking_and_hostname_378.png)

## Check Process Information:

### a. Get details about a process:

![configure_networking_and_hostname_379.png](rhcsa_images/configure_networking_and_hostname_379.png)

### b. List open files by a process:

- install ‘lsof’ using ‘sudo dnf install lsof -y’

![configure_networking_and_hostname_380.png](rhcsa_images/configure_networking_and_hostname_380.png)

## Packet Filtering with firewalld

**firewalld** is a dynamic firewall management tool in Linux that provides an interface to configure and manage network traffic rules using zones and services.

### 1. **Default Zone Configuration**:

### a. Configure firewalld:

```bash
sudo dnf install firewalld -y  && sudo systemctl enable firewalld && sudo systemctl start firewalld && sudo systemctl status firewalld

```
### b. Retrieve default zone:

![packet_filtering_with_firewalld_381.png](rhcsa_images/packet_filtering_with_firewalld_381.png)

### c. Set default zone:

![packet_filtering_with_firewalld_382.png](rhcsa_images/packet_filtering_with_firewalld_382.png)

### 2. **Listing and Managing Services**:

### a.  List all active configurations:

![packet_filtering_with_firewalld_383.png](rhcsa_images/packet_filtering_with_firewalld_383.png)

### b. Add service (e.g., HTTP):

![packet_filtering_with_firewalld_384.png](rhcsa_images/packet_filtering_with_firewalld_384.png)

### c. Remove service: 

![packet_filtering_with_firewalld_385.png](rhcsa_images/packet_filtering_with_firewalld_385.png)

### 3. **Managing Ports**:

### a. Add a specific port (e.g., 80/TCP):

![packet_filtering_with_firewalld_386.png](rhcsa_images/packet_filtering_with_firewalld_386.png)

### b. Remove a specific port:

![packet_filtering_with_firewalld_387.png](rhcsa_images/packet_filtering_with_firewalld_387.png)

### 4. **Zones and Sources**:

### a. Add a source to a zone:

![packet_filtering_with_firewalld_388.png](rhcsa_images/packet_filtering_with_firewalld_388.png)

### b. List active zones:

![packet_filtering_with_firewalld_389.png](rhcsa_images/packet_filtering_with_firewalld_389.png)

### c. Remove a source from a zone:

![packet_filtering_with_firewalld_390.png](rhcsa_images/packet_filtering_with_firewalld_390.png)

### 4. **Permanent and Runtime Configurations**:

### a. Make runtime changes permanent:

![packet_filtering_with_firewalld_391.png](rhcsa_images/packet_filtering_with_firewalld_391.png)

### b. Add a permanent rule (e.g., a port):

![packet_filtering_with_firewalld_392.png](rhcsa_images/packet_filtering_with_firewalld_392.png)

## Statically Route IP Traffic

### Scenario Details:

- **Interface**: `eth0`
- **IPv4 Address**: `172.31.78.229/20`
- **Gateway**: Assume the gateway is `172.31.64.1` (a typical default gateway for a `/20` subnet with a private IP starting from `172.31.64.0`).
- **Destination Network**: Add static routes to example subnets `192.168.1.0/24` and `10.0.0.0/8`. 

![packet_filtering_with_firewalld_393.png](rhcsa_images/packet_filtering_with_firewalld_393.png)

### **Static Route Configuration**

### a. **Adding Static Routes**:

```bash
sudo ip route add <destination_network>/<subnet_mask> via <gateway_ip> dev <interface>
```

### b. **Delete a Static Route**:

```bash
sudo ip route del <destination_network>/<subnet_mask> via <gateway_ip>
```

### c. **Set a Default Gateway**:

```bash
sudo ip route add  default via <gateway_ip> dev <interface> 
```

### d. **View Current Routing Table**:

```bash
ip route show
```

### e. **Persist Routes (Optional, for RHEL-based Systems)**:
Add the route to `/etc/sysconfig/network-scripts/route-<interface>`:

```bash
<destination_network>/<subnet_mask> via <gateway_ip> <dev interface>
```

### f. **Apply Changes (if using NetworkManager)**:

```bash
sudo nmcli device reapply <interface>
```

## **Text-based User Interface**:

- `sudo nmtui`: Launches a text-based interface for managing network connections.

![static_route_configuration_394.png](rhcsa_images/static_route_configuration_394.png)

![static_route_configuration_395.png](rhcsa_images/static_route_configuration_395.png)


## Synchronize Time Using Network Peers:

**NTP (Network Time Protocol)** is a protocol used to synchronize the clocks of computers over a network. It ensures that all systems maintain accurate time, which is critical for various operations such as logging, security, and scheduling.

### a. Check NTP Service Status:

![network_time_protocol_396.png](rhcsa_images/network_time_protocol_396.png)

NTP Sources: 169.254.169.123

### b. **View Current Time Settings**

![network_time_protocol_397.png](rhcsa_images/network_time_protocol_397.png)

### c. Change Time Zone:

![network_time_protocol_398.png](rhcsa_images/network_time_protocol_398.png)

### d. Install and Start Chrony:

**Chrony**: A modern NTP implementation for systems with intermittent network connectivity.

![network_time_protocol_399.png](rhcsa_images/network_time_protocol_399.png)

- Start and enable the service with chronyd:

![network_time_protocol_400.png](rhcsa_images/network_time_protocol_400.png)

### e. Verify Synchronization:

After enabling Chrony, use `timedatectl` to confirm the system clock is synchronized, and the NTP service is active.

![network_time_protocol_401.png](rhcsa_images/network_time_protocol_401.png)

### f. Enable NTP Synchronization:

![network_time_protocol_402.png](rhcsa_images/network_time_protocol_402.png)


# Manage Local User Accounts

## 1. Adding Users

Syntax:
```bash
useradd [options] username
```
![network_time_protocol_403.png](rhcsa_images/network_time_protocol_403.png)

![network_time_protocol_404.png](rhcsa_images/network_time_protocol_404.png)

### Options:

### a. -- shell/bin/othershell: Specify user’s login shell

       --home /home/dir : Specify home directory

![manage_local_user_acc_405.png](rhcsa_images/manage_local_user_acc_405.png)

### b. --uid [UID]: Set custom UID

![manage_local_user_acc_406.png](rhcsa_images/manage_local_user_acc_406.png)

### Defaults:

### a. useradd -D: show defaults settings

      - -defaults: View/edit defaults

![manage_local_user_acc_407.png](rhcsa_images/manage_local_user_acc_407.png)


## **2. Modifying Users**

- **Changing Details:**

### a. Change Home directory:

![manage_local_user_acc_408.png](rhcsa_images/manage_local_user_acc_408.png)

### b. Change Username:

original login name: jane

![manage_local_user_acc_409.png](rhcsa_images/manage_local_user_acc_409.png)

![manage_local_user_acc_410.png](rhcsa_images/manage_local_user_acc_410.png)

* login name changed but group name remains same.

### c. Change Default Shell:

![manage_local_user_acc_411.png](rhcsa_images/manage_local_user_acc_411.png)

![manage_local_user_acc_412.png](rhcsa_images/manage_local_user_acc_412.png)

## **Locking and Unlocking:**

### a. Locking a user account:

![manage_local_user_acc_413.png](rhcsa_images/manage_local_user_acc_413.png)

### b. Unlocking a user account:

![manage_local_user_acc_414.png](rhcsa_images/manage_local_user_acc_414.png)

## **Account Expiry**

### a. Sets an expiry date for the account:

![manage_local_user_acc_415.png](rhcsa_images/manage_local_user_acc_415.png)

![manage_local_user_acc_416.png](rhcsa_images/manage_local_user_acc_416.png)

### **b. Remove the expiry date:**

![manage_local_user_acc_417.png](rhcsa_images/manage_local_user_acc_417.png)

## **3. Managing Password Aging:**

### Force Password Change:

![manage_local_user_acc_418.png](rhcsa_images/manage_local_user_acc_418.png)

### Password Validity Period:

### a. Limits password validity to 30 days

![manage_local_user_acc_419.png](rhcsa_images/manage_local_user_acc_419.png)

### b. Removes the password expiry restriction

![manage_local_user_acc_420.png](rhcsa_images/manage_local_user_acc_420.png)

## **4. Deleting Users:**

```bash
userdel [options] username
```

### a. Deletes user's account and their home directory

![manage_local_user_acc_421.png](rhcsa_images/manage_local_user_acc_421.png)

* `-r`: Delete user and home directory.

### b. Delete a group:

![manage_local_user_acc_422.png](rhcsa_images/manage_local_user_acc_422.png)

![manage_local_user_acc_423.png](rhcsa_images/manage_local_user_acc_423.png)

![manage_local_user_acc_424.png](rhcsa_images/manage_local_user_acc_424.png)

![manage_local_user_acc_425.png](rhcsa_images/manage_local_user_acc_425.png)

## **5. Viewing User Details:**

### a. Show UID, GID, and groups of the current user:

![manage_local_user_acc_426.png](rhcsa_images/manage_local_user_acc_426.png)

### b. Shows user account information:

![manage_local_user_acc_427.png](rhcsa_images/manage_local_user_acc_427.png)

### c. Lists numeric UIDs and GIDs for directories under `/home/`:

![manage_local_user_acc_428.png](rhcsa_images/manage_local_user_acc_428.png)

## 6   System Users:

### a. Create a system account (non-login, for services):

![manage_local_user_acc_429.png](rhcsa_images/manage_local_user_acc_429.png)


## 7  Configuration Files:

- /etc/skel: Contains default files and settings copied to a new user's home directory upon account creation.
- /etc/login.defs: Controls default system-wide settings for account creation and management.

## Local Groups and Group Memberships

### 1. User and Group Creation:

![local_groups_and_group_membership_430.png](rhcsa_images/local_groups_and_group_membership_430.png)

### 2. Managing Group Memberships:

### a. Adds `john`_413 to the `developers` group:

![local_groups_and_group_membership_431.png](rhcsa_images/local_groups_and_group_membership_431.png)

### b. Removes `john`_413 from the `developers` group:

![local_groups_and_group_membership_432.png](rhcsa_images/local_groups_and_group_membership_432.png)

### 3. Changing Primary Group:

### a. Sets `developers` as `john`_413 primary group:

![local_groups_and_group_membership_433.png](rhcsa_images/local_groups_and_group_membership_433.png)

### b. Resets `john`'s primary group to his default group:

![local_groups_and_group_membership_434.png](rhcsa_images/local_groups_and_group_membership_434.png)

![local_groups_and_group_membership_435.png](rhcsa_images/local_groups_and_group_membership_435.png)

### 4. Renaming and Deleting Groups:

### a. Renames `developers` to `programmers`

![local_groups_and_group_membership_436.png](rhcsa_images/local_groups_and_group_membership_436.png)

![local_groups_and_group_membership_437.png](rhcsa_images/local_groups_and_group_membership_437.png)

### b. Deletes `programmers` after ensuring it’s not the primary group of any user:

![local_groups_and_group_membership_438.png](rhcsa_images/local_groups_and_group_membership_438.png)

### **Key Points:**

- A user's primary group cannot be deleted.
- Use `gpasswd` to manage group memberships and `usermod` to change primary groups.
- `groupmod` renames groups, and `groupdel` removes them only if not in use as a primary group.

## Manage Access to the Root Account:

### 1. Listing Root Directory:

![manage_access_to_root_acc_439.png](rhcsa_images/manage_access_to_root_acc_439.png)

- This command is used to list the content of /root/ directory which is home directory of root user.
- You need superuser privileges (via sudo) to access this directory.

### 2. Switching to the Root User or Root Shell

### a. **Using sudo - -login or sudo -i:**

![manage_access_to_root_acc_440.png](rhcsa_images/manage_access_to_root_acc_440.png)

- This commands give you **root shell** with root user’s environment fully loaded.
- Equivalent to login in as root user directly.

### b. Using su to Switch User:

![manage_access_to_root_acc_441.png](rhcsa_images/manage_access_to_root_acc_441.png)

- **su -** or **su -l** or **su - -login** starts a login shell as the root user, loading the root user’s environment.
- You will need the **root  password** to execute it.

### **Difference Between `sudo` and `su`:**
- **`sudo`**: Executes commands with root privileges for your current user (provided your user has sudo permissions).
- **`su`**: Switches to the root user (or another user if specified) entirely, requiring the password of the target account.

### **3. Setting or Unlocking the Root Password:**

### **a. Set a New Password for the Root User:**

![manage_access_to_root_acc_442.png](rhcsa_images/manage_access_to_root_acc_442.png)

- Prompts for the new password for the root account.

### **b. Unlock the Root Account**

![manage_access_to_root_acc_443.png](rhcsa_images/manage_access_to_root_acc_443.png)

- Unlocks the root account if it has been disabled (common in many distributions for security).

### **4. Locking the Root Account:**

![manage_access_to_root_acc_444.png](rhcsa_images/manage_access_to_root_acc_444.png)

- Lock the root account, disabling direct login access. Useful for enhancing security when the root account is not needed.

### **Best Practices for Managing Root Access:**

### a. **Avoid Direct Root Logins:**
    
- Use `sudo` for administrative tasks instead of logging in as root.
    
### b. **Lock the Root Account (if not needed):**
    
- Prevents unauthorized direct access to the root account.
    
### c. **Use Strong Passwords:**
    
- Always set a strong and unique password for the root account.
    
### d. **Use Role-Based Access Control:**
    
- Assign specific administrative permissions to users through `sudo` rather than enabling root access.
    
### e. **Monitor Logs:**
    
- Keep track of root-level activities via system logs for auditing.

## Configure PAM:

Pluggable Authentication Modules(PAM) is a framework for authentication that allows administrators to integrate various authentication technologies .

### 1. Check the Existing PAM Configuration:

PAM configuration files are located in **/etc/pam.d/** . Each service has configuration file in this directory.

![configure_pam_445.png](rhcsa_images/configure_pam_445.png)

### 2. PAM File Syntax:

```bash
<module-type> <control-flag> <module-path> [arguments]
```
- Module Type: auth, account, password, session
- Control Flags: required, requisite , sufficient, optional.
- Example

```bash
password requisite pam_pwquality.so retry=3
```
### **PAM Control Flags**

| **Control Flag** | **Behavior** | **Outcome** |
| --- | --- | --- |
| **`required`** | Must pass for overall success; continues checking other modules. | Final result is failure if this module fails, but errors appear only after checking all modules. |
| **`requisite`** | Must pass for success; stops checking further if it fails. | Immediate failure if this module fails. |
| **`sufficient`** | If it passes, authentication succeeds (unless a prior `required` failed). | Skips further checks if this passes, provided no "required" module failed earlier. |
| **`optional`** | Not critical; used only if no "required" modules are present. | Success or failure does not affect the overall result unless it's the only module in the stack. |
| **`include`** | References another PAM configuration file for additional rules. | Enables modular configuration by including other files for reusability and flexibility. |

### 3. Backup Before Changes

```bash
cp /etc/pam.d/system-auth /etc/pam.d/system-auth.bak
cp /etc/pam.d/password-auth /etc/pam.d/password-auth.bak
```
### **4. Enforce Password Complexity**

### a. Configure in **/etc/security/pwquality.conf** :


```bash
minlen = 8
dcredit = -1
ucredit = -1
ocredit = -1
lcredit = -1

```
### b.  Add to PAM file:

```bash
password requisite pam_pwquality.so retry=3
```

### 5. Account Lockout Policy

### a. **Configure /etc/security/failock.conf**:

```bash
deny=3
unlock_time=600
```
### b. Add to PAM file:

```bash
auth required pam_faillock.so preauth silent audit deny=3 unlock_time=600
auth required pam_faillock.so authfail audit deny =3 unlock_time=600 
account required pam_faillock.so
```

### 6. SSH Integration

### a. Enable PAM in /etch/ssh/sshd_config:

```bash
UsePAM yes
```
### b. Restart SSH service:

```bash
systemctl start sshd
```

### **7. Test and Monitor**

### a. Test changes with a non-root user:

```bash
su - <test-user>
```

### b. Monitor PAM logs:

```bash
tail -f /var/log/secure
```

### 8. Restore Backup if Needed

```bash
mv /etc/pam.d/system-auth.bak /etc/pam.d/system-auth
mv /etc/pam.d/password-auth.bak /etc/pam.d/password-auth

```

## Configure Key-based authentication for SSH

### 1. Generate the SSH Key Pair

- Log in to the client machine (the one initiating the SSH connection).
- Open a terminal and run:

```bash
ssh-keygen -t rsa -b 2048

```

### **Options:**

- `t rsa`: Specifies the RSA algorithm.
- `b 2048`: Sets the key length to 2048 bits.

 You'll be prompted to provide:

- File to save the key (default: `~/.ssh/id_rsa`).
- Passphrase (optional, for additional security).

### **2. Copy the Public Key to the Remote Server**

### a. Use the `ssh-copy-id` command to transfer the public key:

```bash
ssh-copy-id user@remote-server
```
- Replace `user` with your username on the remote server.
- Replace `remote-server` with the IP address or hostname of the server.

### b. Enter the password for the remote server when prompted:

- Note: If ssh-copy-id is not available, you can manually copy the key.
 
- View the public key:

```bash
cat ~/.ssh/id_rsa.pub
```

- On the remote server, append the public key to the `~/.ssh/authorized_keys` file:

```bash
echo "<public-key-content>" >> ~/.ssh/authorized_keys
```

- Ensure correct permissions:

```bash
chmod 600 ~/.ssh/authorized_keys
```

### 3. Configure the SSH Server (Optional)


### a. Edit the SSH configuration file on the server:

```bash
sudo vi /etc/ssh/sshd_config
```

### b. Ensure the following lines are set:

```bash
PubkeyAuthentication yes
PasswordAuthentication no
```
- `PasswordAuthentication no` disables password-based login for enhanced security.

### c) Restart the SSH service to apply changes:

```bash
sudo systemctl restart sshd
```

### **4. Test Key-Based Authentication**


### a. From the client machine, connect to the server:

```bash
ssh user@remote-server
```

### b. If successful, you won't be prompted for a password (unless you set a passphrase).


### **5. (Optional) Secure Key Pair**

- Set appropriate permissions for your key files

```bash
chmod 600 ~/.ssh/id_rsa
chmod 644 ~/.ssh/id_rsa.pub

```

## List and identify SeLinux file and process context

## SeLinux( Security Enhanced Linux):

- A security model enforcing **Mandatory Access Control(MAC)** to enhance system security.


### Key Concepts in SELinux from the Output

### **1. SELinux Context**:

Every file, process, or user in a SELinux-enabled system has context. This context consist of:

- **User:** e.g. unconfined_u , system_u
- **Role:** e.g. unconfined_u , system_u
- **Type**: e.g. user_home_t , sshd_exec_t
- **Level:** Security Levels, e.g. : s0-s0:c0.c01023

```bash
**Format:** <user>:<role>:<type>:<level>

**Example:** unconfined_u:object_r:user_home_t:s0
```

### 2. Commands:

- ls -Z: Shows SELinux context for file.

```bash
$ ls -Z
unconfined_u:object_r:user_home_t:s0 archive.tar.gz
```

- ps axZ: Displays SELinux context for processes.

![SeLinux_446.png](rhcsa_images/SeLinux_446.png)

![SeLinux_447.png](rhcsa_images/SeLinux_447.png)

![SeLinux_448.png](rhcsa_images/SeLinux_448.png)

- getenforce: Check the SELinux Mode(Enforcing,Permissive, Disabled)

![SeLinux_449.png](rhcsa_images/SeLinux_449.png)

- sudo semanage login -l: Maps Linux Users to Selinux user

![SeLinux_450.png](rhcsa_images/SeLinux_450.png)

- sudo semanage user -l: Lists SELinux Users and their roles.

![SeLinux_451.png](rhcsa_images/SeLinux_451.png)

### 3. SELinux Modes:

1. Enforcing: Policies are enforced.
2. Permissive: Logs violation without enforcement.
3. Disabled : SELinux is off

### i. **SELinux Features and Role Highlights**

### **a. Mandatory Access Control (MAC)**:

SELinux enforces strict access control rules. Users and processes are only allowed actions explicitly permitted.

### b. **User Roles and Domains**:

- Specific SELinux roles (e.g. sysadmin_r, guest_r) dictate what a user can do.
- Process runs in the domain( e.g. sshd_t , unconfined_t) that defines their permissions.

### c. **Types and Type Enforcement**:

- Files and processes have specific types (e.g.,sshd_exec_t for SSH daemon executables). Access between types is governed by policies.

### d. **Levels (MLS/MCS):**

- **MLS (Multi-Level Security):** Defines hierarchical levels.
- **MCS (Multi-Category Security):** Adds granularity with ranges.

## Change kernel time parameter, persistent and non persistent

### Key Points from the Commands

### a. **Listing All Parameters**:
- sysctl -a: Lists all current parameters and their current values.

![SeLinux_452.png](rhcsa_images/SeLinux_452.png)

- Errors like sysctl : permission denied occurs when you attempt to access protected parameters without sufficient privileges.

### b. **Viewing Specific Parameter Values**:

- Display the value of the specified parameter.

```bash
sysctl <parameter_name>
```
![SeLinux_453.png](rhcsa_images/SeLinux_453.png)

### c. **Modifying Runtime Parameters**:

- Changes the value of parameter at runtime and changes made this way are not persistent across reboots.

![kernel_parameter_454.png](rhcsa_images/kernel_parameter_454.png)

-w : write, modify kernel parameter but not persistent.

### **d. Making Changes Persistent**:

- Step 1: Create or edit a configuration file, e.g., /etc/sysctl.d/swap-less.conf, using an editor like vim.

```bash
sudo vim /etc/sysctl.d/swap-less.conf
```
- Add the desired parameter and value, such as:

```bash
vm.swappiness=10
```
### e. Apply the Configuration File

```bash
sudo sysctl -p /etc/sysctl.d/swap-less.conf
```

- Applies changes from the specified configuration file to make them effective immediately.

### **Persistent Changes to Kernel Parameters**

- Changes made with `sysctl -w` are temporary and will revert after a reboot. To make them persistent:
    - Add the parameter and its value to a configuration file under `/etc/sysctl.d/` or `/etc/sysctl.conf`.
    - Apply the changes using `sysctl -p` with the file path if needed.

## SELinux Policies and Troubleshooting

### SELinux Modes:

### a. Enforcing Mode(enforcing=0) :
- Blocks unauthorized actions( enforcing=0 for disable temporarily)

### b. Permissive Mode:
- Logs unauthorized action( for troubleshooting)

### c. Disabled Mode(selinux=0):
- Turn off SELinux(not recommended for production)

### Force Autorelabel:
- Reset the security context

Command:
```bash
/.autorelabel(create file) ---> Reboot or autorelabel=1
```


## Troubleshooting Context:

### a. Check Logs:

- System Logs: journalctl -xe

![selinux_policies_and_troubleshooting_455.png](rhcsa_images/selinux_policies_and_troubleshooting_455.png)

- Filter for issues: grep “httpd” /var/log/messages | less

### b. Audit Denials:

### i. Extract issues:

```bash
ausearch -c 'httpd' --raw | audit2allow -M my-httpd
```

### c. Apply Policy:

```bash
semodule -X 300 -i my-httpd.pp
```

## Manage File Context:

### i.View SELinux Contexts:

```bash
ls -laZ /kodekloud/
```

### ii. Sets context for New Files:

- Assign the type httpd_sys_content_t to the directory.

```bash
semanage fcontext -a -t httpd_sys_content_t "/kodekloud(/.*)?"
```
### iii. Apply changes to the contexts:

```bash
restorecon -R /kodekloud
```

## **Validation**

### a. **Start Service:**

```bash
systemctl start httpd.service
```

### b. Test Access:

```bash
curl 127.0.0.1:88
curl 127.0.0.1:88/kodekloud.html

```
### Summary Flow:

### 1. Investigate issues using `journalctl` or `ausearch`.
### 2. Create and apply SELinux policies using `audit2allow` and `semanage`.
### 3. Validate using `curl` or similar testing tools.


## Manage, configure and container management using podman

- Podman is a container management tool that its daemonless, rootless, and compatible with OCI standards differing from docker by not requiring a central daemon and enabling enhanced security and flexibility.

### Installation:

```bash
sudo dnf install podman -y
podman --version 
```
### Basic Commands:

- Pull Image

```bash
podman pull <image>
```

- Run Container

```bash
sudo podman run -d --name <name> -p <host-port>:<container-port> <image>
```
- List running container

```bash
sudo podman ps -a
```

- Access Container Shell

```bash
sudo podman exec -it <container_name> /bin/bash
```

- Stop Container

```bash
sudo podman stop <name>
```

- Remove Container

```bash
sudo podman rm <name>
```

- Remove images

```bash
sudo podman rmi <image>
```

### Pod Management:

- Create Pod:

```bash
sudo podman pod create --name <pod-name> -p <host-port>:<container-port>
```

- Run in Pod

```bash
sudo podman run -d --pod <pod-name> <image>
```

- List Pods:

```bash
sudo podman pod ls
```

- Inspect Pods:

```bash
sudo podman pod inspect <pod-name>
```
- Stop Pods:

```bash
sudo podman pod stop <pod-name>
```

- Remove Pod:

```bash
sudo podman pod rm <pod-name>
```

### Other useful commands

- Inspect Container

```bash
sudo podman inspect <name>
```

- View Logs

```bash
sudo podman logs <name>
```

- Prune Unused Resources

```bash
sudo podman system prune -a
```

- Export/Import Images

```bash
Export:
sudo podman save -o <file>.tar <image>

Import:
sudo podman load -i <file>.tar
```

### Systemd Integration

- Generate Service:

```bash
sudo podman generate systemd --name <name> --files --new
```

- Move File

```bash
sudo mv <file>.service /etc/systemd/system/
```
- Enable/start service

```bash
sudo systemctl enable <name>.service
sudo systemctl start <name>.service
```

## Skopeo

Skopeo is a command line utility for managing and interacting with container images and registries.

### a. Installing Skopeo

```bash
sudo yum install skopeo
```
![Skopeo_456.png](rhcsa_images/Skopeo_456.png)

### b. Inspecting Remote Images

```bash
skopeo inspect docker://registry.fedoraproject.org/fedora:latest
```

- Displays image metadata: name, digest, tags, creation date, architecture, OS layers and environment variable.

![Skopeo_457.png](rhcsa_images/Skopeo_457.png)

![Skopeo_458.png](rhcsa_images/Skopeo_458.png)

### Enhanced Inspection:

```bash
skopeo inspect --config docker://registry.fedoraproject.org/fedora:latest | jq
```

![Skopeo_459.png](rhcsa_images/Skopeo_459.png)

![Skopeo_460.png](rhcsa_images/Skopeo_460.png)

- Provide configuration details like cmd, rootfs, history.

### c. Copying Images:

```bash
skopeo copy docker://source_registry/image_docker://dest_registry/image
```

### i. Copies an image between registries:

```bash
skopeo copy oci:layout:latest dir:local_directory
```
- Copy an oci layout image into local directory.

### d. Deleting Images:

```bash
skopeo delete docker://localhost:5000/imagename:latest
```

- Remove an image from local or remote repository

### e. Syncing Image:

```bash
skopeo sync --src docker --dest dir registery.example.com/image /local/dir
```

- Syncs images from a registry to a local directory.

### f. Documentation Commands:

```bash
man skopeo: Overview of skopeo commands
man skopeo-copy: Details on copying images 
```

### Key Use Case:

- Inspecting: View image details without pulling.
- Copying: Transfer image across locations.
- Deleting: Remove Registry Images
- Synching: Backup images locally.

- Skopeos simplifying container management without requiring a container runtime.

## Containers as Services and
Persistent Storage for Containers

Container Tool is a software module by RHEL that contain Podman , skopeo, Buildah , eunc etc.

### 1. Containers Tool and Storage Setup:

### a. Reset and Install Container Tools:

```bash
sudo yum module reset container-tools
sudo yum module install container-tools:3.0
```
- Reset an existing container-tools module configuration and install version 3.0 .

### b. Create Configuration and Storage Directories:

```bash
mkdir -p ~/.config/systemd/user
mkdir ~/container_storage
echo "Hello" > ~/container_storage/hello.html
```

- Create  a directory for systemd user services(~/.config/systemd/user)
- Creates a directory for persistent container storage(~/container_storage) and adds test file to hello.html.

![container_as_service_and_persistent_storage_461.png](rhcsa_images/container_as_service_and_persistent_storage_461.png)

![container_as_service_and_persistent_storage_462.png](rhcsa_images/container_as_service_and_persistent_storage_462.png)

![container_as_service_and_persistent_storage_463.png](rhcsa_images/container_as_service_and_persistent_storage_463.png)

### 2. Create Container and Attach Storage:

### c. Run a container with persistent storage:

```bash
sudo podman run -d --name container_service -p 1025:8080 -v ~/container_storage:/var/www/html:Z registry.access.redhat.com/rhscl/httpd-24-rhel7
```
- Runs an Httpd container in detached mode(-d) named container_service.
- Maps host port 1025 to container port 8080.
- Mount **~/container_storage** to the container’s /var/www/html directory with SELinux compatibility(:Z).

![container_as_service_and_persistent_storage_464.png](rhcsa_images/container_as_service_and_persistent_storage_464.png)

### d. Test the container:

```bash
curl http://127.0.0.1:1025/hello.html
```
- verifies that the hello.html file is accessible through the containerised HTTPD service.

![container_as_service_and_persistent_storage_465.png](rhcsa_images/container_as_service_and_persistent_storage_465.png)

### 3. Create Systemd Unit File:
