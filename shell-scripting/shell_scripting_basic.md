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

# Best Practices for Variable Names in Shell Scripting

In shell scripting, it is important to follow naming conventions to improve the readability and maintainability of the code. Here are some best practices:

## Good Practice
- Use lowercase letters for variable names.
- Separate words with underscores (`_`) to improve readability.

### Example:
```sh
mission_name="Apollo"
```

## Bad Practice
- **Avoid** using capital letters for variable names.
- **Avoid** using spaces in variable names.
- **Avoid** using hyphens (`-`) in variable names as they can be confused with subtraction operators.

### Bad Examples:
```sh
Mission_Name="Apollo"
Mission Name="Apollo"  # Error due to space
Mission-name="Apollo"  # Error due to hyphen
```

## Additional Recommendations:
- Use descriptive names that make the purpose of the variable clear.
- Avoid using single-letter variables unless in very small loops or temporary cases.
- For constants (values that do not change), uppercase variable names are acceptable by convention:
  
  ```sh
  MAX_LIMIT=100
  ```

By following these practices, your shell scripts will be more readable and easier to maintain.

## 3.Command Line Arguments

Every time the script variable name changes, we have to update it in the script manually. This can be improved by specifying the variable name through the command line itself when a new script with different variable is launched.

### Problem:

Currently, the script requires updating the variable name inside the code every time, as shown below:

![command_line_arg_with_using_variable_6.png](shell_script_images/command_line_arg_with_using_variable_6.png)

### Solution:

If we specify the script variable name in the command line when a new mission is launched, it simplifies the process. Here's how you can access the mission name through the command line and use it in the script:

![command_line_arg_with_using_variable_7.png](shell_script_images/command_line_arg_with_using_variable_7.png)

### Command Line Argument:

- `$0`: Represents the script name.
- `$1`: Represents the first command line argument 

Here's an example of using command line arguments in a script:

![command_line_arg_with_using_variable_8.png](shell_script_images/command_line_arg_with_using_variable_8.png)

> **Note:** When someone else reviews the script in the future, the second part in the picture above may be hard to understand. Hence, it is recommended to use the format from the first picture for better clarity.

---

### Best Practices:

1. **Make your script reusable**: Design your script to handle various inputs and conditions without needing manual updates.
2. **Avoid hardcoding values**: The script should not require editing before running.
3. **Use command line arguments**: Pass inputs like mission name using command line arguments to make the script flexible and easy to use.

## Shell Scripting: `read` Command and Command-line Arguments

In shell scripting, you can pass inputs in two primary ways:
1. **Command-line arguments**: e.g., `$1`, `$2`, etc.
2. **Using `read` command**: To prompt users for input during execution.

### Using read Command for Input:

![command_line_arg_with_read_command_9.png](shell_script_images/command_line_arg_with_read_command_9.png)

