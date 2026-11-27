# dotfiles

![Bash Script](https://img.shields.io/badge/bash_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)

## CLI References

The [`cli`](cli/) folder contains command references for tools used in development and some extras:

- [Dotnet](cli/dotnet.md) - .NET SDK information, builds, running, hot reload, publishing, and project templates
- [Git & GitHub](cli/git-github.md) - Git setup, daily workflow, remotes, and commit history
- [Node, NPM, and NVM](cli/node-npm-nvm.md) - Node.js version management, npm, project versioning, builds, Netlify, and inspection commands
- [Python & Pip](cli/python-pip.md) - Python, pip, package, and upgrade commands
- [System & Editors](cli/system-editors.md) - Windows/macOS file explorer, VS Code, Visual Studio, SFC, DISM, and slmgr commands

## Custom Bash Terminal

This repository contains a copy of my personal Bash profile in [`.bashrc`](.bashrc) loaded here [`.bash_profile`](.bash_profile). It configures NVM (Node Version Manager) when available and adds a colorful command prompt with a randomly selected emoji.

### What it does

- Sets `NVM_DIR` to `~/.nvm` and loads NVM and its Bash completions when those files exist.
- Defines `random_emoji`, which prints a randomly selected emoji from a list of emojis.
- Defines `set_my_prompt`, which sets the prompt to show `username`, an emoji, the current working directory in red, and the shell prompt character.
- Runs `set_my_prompt` through `PROMPT_COMMAND`, so the prompt (including its emoji) is refreshed before each command.

The NVM setup is optional: if NVM is not installed at `~/.nvm`, the profile skips loading it.

### Installation

Create `.bash_profile` and `.bashrc` files in your home directory (~/).

- Open terminal

```bash
touch ~/.bash_profile                                  # Creates .bash_profile
touch ~/.bashrc                                        # Creates .bashrc

touch ~/.bash_profile && touch ~/.bashrc               # Creates both files in 1 command
```

- **If** you have an existing Bash profile setup, please **BACK UP** your existing profile configuration before replacing or editing it. From the repository directory, download and copy this profile to your home directory:

```bash
cp .bash_profile ~/.bash_profile
cp .bashrc ~/.bashrc
```

Alternatively, append the contents to your existing `~/.bashrc` if you want to preserve its current settings.

Load the profile in the current shell:

```bash
source ~/.bashrc
```

The changes will also be loaded automatically by Bash login shells that read `~/.bash_profile`.

### Requirements

- Bash
- A terminal with UTF-8 support to display the emoji correctly
- [NVM](https://github.com/nvm-sh/nvm) only if you want Node version management; the profile does not install NVM
  - During NVM installation you may be prompted/instructed to create a `.bash_profile` or `.bashrc` file within your root (`~`) directory if those do not exist already.

### `.bash_profile` vs `.bashrc`

Both files live in your home directory (~/) and configure your Bash environment

> **`~/.bash_profile`** runs once for a login shell.  
> **`~/.bashrc`** runs for every new interactive shell.

- Login Shells: Logging into a system via console/SSH, or opening a terminal on macOS/Git Bash.
- Non-login interactive shells: Opening a new terminal window/tab on Linux, or typing bash to start a subshell.

#### Key Differences:

|                  | Login shell profile                   | Interactive shell profile                 |
| :--------------- | :------------------------------------ | :---------------------------------------- |
| **File**         | `~/.bash_profile`                     | `~/.bashrc`                               |
| **Triggered by** | Console login, SSH, or macOS/Git Bash | New terminal window/tab or running `bash` |
| **Best for**     | Session-wide setup                    | Terminal appearance and behavior          |

#### Common contents

**`~/.bash_profile`**

- Export environment variables: `export VAR=value`
- Modify `$PATH`
- Run startup scripts
- Display login messages
- Load `~/.bashrc` for login shells

**`~/.bashrc`**

- Create command aliases: `alias ll='ls -la'`
- Define shell functions
- Customize the prompt with `PS1`
- Configure tool completions for NVM, Git, and others

#### Standard Best Practice

Operating systems and terminal apps behave differently (for instance, Git Bash on Windows and macOS Terminal launch login shells by default, whereas Ubuntu launches non-login shells).

To keep things consistent across every terminal window:

1. Put almost everything in ~/.bashrc. Store your aliases, functions, custom PS1 prompts, and tool initializers here.

2. Source ~/.bashrc from ~/.bash_profile. Add the following snippet to the top of your ~/.bash_profile so login shells automatically inherit your .bashrc settings:

```bash
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
```
