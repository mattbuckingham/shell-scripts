# post-install

This repository contains a Bash installation script that is designed to set up a new Unix-based environment with essential packages and personal configurations. It also ensures that the user's shell is set to Bash, and adds custom aliases to the `.bashrc` file.

## Features

- Changes shell to Bash
- Updates system packages
- Installs essential applications
- Adds aliases to .bashrc file
- Downloads configuration files from GitHub

## How to Run

To run the script, you need to follow these steps:

1. Clone the repository using git, or download the script directly.
2. Make the script executable by running the command `chmod +x install.sh`.
3. Run the script with the command `./install.sh`. 

You can also use the `-v` or `--verbose` option for verbose output: `./install.sh -v`.

## Script Details

The script performs the following actions:

- Checks if the shell is Bash, if not, attempts to change the shell to Bash.
- Updates the system's package list using `apt-get update` and upgrades the installed packages.
- Installs the `apt-utils` and `software-properties-common` packages if they're not already installed.
- Installs several essential apps, including `curl`, `git`, `gcc`, `make`, `wget`, `emacs`, `python3`, `python3-pip`, `htop`, `openssh-client`, `rsync`, and `netcat`.
- Checks if a `.bashrc` file exists, and creates a blank `.bashrc` file if it doesn't.
- Appends commands to the `.bashrc` file to source the `.bash_aliases` file if it exists.
- Downloads the `.bash_aliases` file from a GitHub repository using `curl`.
- Sources the `.bashrc` file so that the aliases take effect immediately.
- Downloads an Emacs config file from a GitHub repository using `curl`.
- Cleans up by fixing broken dependencies, removing unnecessary packages, and cleaning up the local repository of retrieved package files.

## Troubleshooting

- If the script fails due to permission issues, you might need to run the script with `sudo` i.e., `sudo ./install.sh`.
- The verbose mode can provide more detailed output, which can help in troubleshooting issues.

________________________________________________________________________________________________

# set-emacs-theme

`set-emacs-theme` is a bash script that allows you to easily download and apply Emacs themes found on the internet. The script assumes the `.el` file is named after the theme name.

## Usage

The script takes the URL of a `.el` file as a parameter. For example, if you want to download and apply a theme named `awesome-theme.el` from `https://example.com/themes/awesome-theme.el`, you would run the script like this:

```bash
./set-emacs-theme.sh https://example.com/themes/awesome-theme.el
```

## What it Does

Here's a rundown of what the script does:

1. Checks if a URL is provided.
2. Extracts the filename from the URL.
3. Changes directory to `~/.emacs.d/themes`, creating it if it doesn't exist.
4. Downloads the theme using `wget`.
5. Appends to `init.el` or `.emacs` to use the theme, after checking if they exist. If none of these files exist, a new `init.el` is created with the theme configuration.

## Prerequisites

- The script uses `wget` to download files, so you must have `wget` installed on your system to use it.
- The script assumes that you're running a Unix-like system with a shell that's compatible with Bash.
- The script assumes that the `.emacs.d` directory is located in your home directory.

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/username/set-emacs-theme.git
    ```
    **Note:** Replace `username` with your GitHub username.

2. Navigate to the repository directory:
    ```bash
    cd set-emacs-theme
    ```

3. Make the script executable:
    ```bash
    chmod +x set-emacs-theme.sh
    ```

----------------------------------------------------------------
# Contributing

Contributions are always welcome. Please submit a pull request if you would like to suggest improvements. 


### ChatGPT

This some of this project, including the majority of the readme was generated and/or rewritten, in part, by chatGPT.
