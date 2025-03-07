# Shell Scripting with Bash
**Interactive shell:** command line interpreter (CLI)
**Non-interactive shell:** script interpreter (batch processing)

### **Difference Between Shell Script and Bash Script (Easy Explanation)**  

Think of **Shell** as a category and **Bash** as a specific type within that category.  

🔹 **Shell Script** → Can run on **any shell** (like `sh`, `zsh`, `ksh`, etc.).  
🔹 **Bash Script** → Only works on the **Bash shell** and supports extra features.  

#### **📌 Simple Analogy**  
Think of a **Shell Script** like a general **"Car"** 🚗 that can have different brands (Toyota, Honda, BMW).   
Bash is like **"Toyota"** — it is a **specific type** of car (Shell).  


- **Bash** is a Unix shell and command language written by Brian Fox for the GNU Project as a free software replacement for the Bourne shell.
- **Bash** is the default shell on most Linux distributions and Apple's macOS (formerly OS X).<br>

### Core concept:
![Shell Scripting](img/intro/terminology.png)<br>

A Terminal is to a shell like a browser is to a web page. The shell is the program that processes the commands you type in the terminal.<br>

Continuing with the analogy, a shell script is a file that contains a series of shell commands. When you run a shell script, the commands in the script are executed in the shell.
or apps like social media platform look a bit different if we access them through a mobile app or if we access them through a web browser. That could be the case of the different CLIs. The services are the same, but the interface differ a bit.<br>

Console: The console is the physical terminal that consisted of a monitor and a keyboard connected to a console port to interact with the system. Think about Video game consoles, Cosole in a video game context are physical hardware that allows us to interact with the software.

TTY: TTY stands for teletypewriter. It is a device that allows you to interact with the system. In the context of Unix-like systems, TTY refers to the console or terminal. TTY is also used to refer to the command-line interface.
In modern era, we can have multiple tabs in a terminal emulator, each tab is a TTY to interact with the same machine and each tab associated with TTY number.

POSIX (Portable Operating System Interface) is a family of standards specified by the IEEE for maintaining compatibility between operating systems. POSIX defines the application programming interface (API), along with command line shells and utility interfaces, for software compatibility with variants of Unix and other operating systems.

POSIX Compliance: POSIX compliance means that a program follows the POSIX standard. POSIX compliance ensures that the program is compatible with other POSIX-compliant systems. POSIX-compliant systems include Linux, macOS, and other Unix-like operating systems.


## Chapter-1: Convention and Syntax:
Conventions are like agreements or standard to establish what is acceptable in a given context.
Conventions are meaning Formatting, Sollowing Naming conventions, Organizing and structuring code, etc.

Expanding Variables: When you want to use the value of a variable, you need to expand it. You can expand a variable by prefixing it with a dollar sign ($).<br>
```bash
name="John"
echo $name
```
In the above example, the value of the variable name is expanded using the dollar sign. The output will be John.