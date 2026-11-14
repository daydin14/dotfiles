# Custom Bash Profile

This repository contains a personal Bash profile in [`.bash_profile`](.bash_profile). It configures NVM (Node Version Manager) when available and adds a colorful command prompt with a randomly selected emoji.

## What it does

- Sets `NVM_DIR` to `~/.nvm` and loads NVM and its Bash completions when those files exist.
- Defines `random_emoji`, which prints a randomly selected emoji.
- Defines `set_my_prompt`, which sets the prompt to show `XDAV`, an emoji, the current working directory, and the shell prompt character.
- Runs `set_my_prompt` through `PROMPT_COMMAND`, so the prompt (including its emoji) is refreshed before each command.

The NVM setup is optional: if NVM is not installed at `~/.nvm`, the profile skips loading it.

## Installation

Back up your existing Bash profile before replacing or editing it. From the repository directory, copy this profile to your home directory:

```bash
cp .bash_profile ~/.bash_profile
```

Alternatively, append the contents to your existing `~/.bash_profile` if you want to preserve its current settings.

Load the profile in the current shell:

```bash
source ~/.bash_profile
```

The changes will also be loaded automatically by Bash login shells that read `~/.bash_profile`.

## Requirements

- Bash
- A terminal with UTF-8 support to display the emoji correctly
- [NVM](https://github.com/nvm-sh/nvm) only if you want Node version management; the profile does not install NVM
