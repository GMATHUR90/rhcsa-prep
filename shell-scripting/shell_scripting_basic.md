# Shell Script Basics

## 1. What is a Shell Script?

A shell script is a file containing a series of commands that are executed by the shell (the command-line interpreter). It automates repetitive tasks, configures environments, or executes multiple commands in a specific order without user interaction.

## 2. Step-by-Step Process to Create a Shell Script

### Step 1: Plan the Script
Before writing a shell script, it is important to have a clear understanding of what you want the script to achieve. Write down the steps and the associated commands needed to complete the task.

### Step 2: Create the Script File
- Use a text editor to create a new file (e.g., `print_hello_world.sh`).
- Add the shell commands you need in the file in the order you want them executed.

### Step 3: Add Commands to the Script
Add the series of commands inside the script that were executed in the last lab or your planned task.

Example:
```bash
#!/bin/bash
echo "Hello World..."
# Add additional commands as needed
```

### Step 4: Make the Script Executable
To execute the script, you can either run it using the `bash` command or configure it to run as an executable file.

#### Option 1: Execute using `bash`
Run the script directly using:
```bash
bash print_hello_world.sh
```

#### Option 2: Make it Executable
Remove the `.sh` extension and configure the script to run like a system command. Use the following command to make the script executable:
```bash
chmod +x print_hello_world
```

### Step 5: Handle Command Not Found Error
If you try to run the script and see a "command not found" error, it means the OS can't find the script in the system’s PATH environment variable.

### Step 6: Add the Script to PATH
To resolve the error, append the directory containing your script to the PATH variable:

```bash
export PATH=$PATH:/path/to/your/script
```

This allows you to run the script from any location as a normal command.

![step_to_create_shell_script_1.png](shell_script_images/step_to_create_shell_script_1.png)
![step_to_create_shell_script_2.png](shell_script_images/step_to_create_shell_script_2.png)
![step_to_create_shell_script_3.png](shell_script_images/step_to_create_shell_script_3.png)
![step_to_create_shell_script_4.png](shell_script_images/step_to_create_shell_script_4.png)
![step_to_create_shell_script_5.png](shell_script_images/step_to_create_shell_script_5.png)


# Shell Script Basics: Variables and Static Values

## 1. What is a Variable in Shell Script?

A variable in a shell script is a placeholder or a symbolic name that holds a value, which can be used and modified during the script execution. Variables help to store data, such as strings, numbers, or filenames, which can be reused multiple times throughout the script.

### Example:

```bash
#!/bin/bash
# Defining a variable
greeting="Hello, World!"

# Using the variable
echo $greeting
```

In this example, the variable `greeting` stores the string "Hello, World!" and is accessed using `$greeting`.

## 2. How Do You Differentiate a Static Value from a Variable?

A **static value** (also called a literal or constant) is a fixed value that does not change during the execution of the script, while a **variable** can hold different values and can be changed as needed.

### Example:

```bash
#!/bin/bash

# Static value
echo "Hello, World!"

# Using a variable
greeting="Hello, World!"
echo $greeting
```

In this example:
- `"Hello, World!"` is a static value. It is directly printed without using any variable.
- `greeting` is a variable that stores the same string, but it allows you to change the value if needed later in the script.


