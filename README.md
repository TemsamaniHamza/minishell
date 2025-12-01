# MiniShell

MiniShell is a small Unix shell project from the 42 curriculum. It is built in **C** and demonstrates how to implement a basic shell with command parsing, built-in commands, and support for pipes and redirections.

## Features

* Command execution
* Built-in commands: `cd`, `echo`, `pwd`, `export`, `unset`, `env`, `exit`
* Environment variable handling
* Input/output redirections: `<`, `>`
* Command pipelines using `|`
* Signal handling for `Ctrl+C` and `Ctrl+\`

## Installation

1. Clone the repo:

   ```bash
   git clone https://github.com/TemsamaniHamza/minishell.git
   ```

2. Go into the repo:

   ```bash
   cd minishell
   ```

3. Compile:

   ```bash
   make
   ```

## Usage

Run the shell:

```bash
./minishell
```

**Examples:**

* Execute commands: `ls -l`, `pwd`, `echo Hello`
* Use pipelines: `ls -l | grep txt`
* Use redirections: `echo Hello > file.txt`
* Built-in commands: `cd ..`, `export VAR=value`, `unset VAR`

## Technologies

* C
* Unix system calls
* Signal handling
* Command parsing
