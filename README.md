post-install

This repository contains a Bash installation script that is designed to set up a new Unix-based environment with essential packages and personal configurations. It also ensures that the user's shell is set to Bash, and adds custom aliases to the .bashrc file.
Features

    Changes shell to Bash
    Updates system packages
    Installs essential applications
    Adds aliases to .bashrc file
    Downloads configuration files from GitHub

How to Run

To run the script, you need to follow these steps:

    Clone the repository using git, download the script directly or copy and past the file.
    Make the script executable by running the command chmod +x post-install
    Run the script with the command ./post-install

You can also use the -v or --verbose option for verbose output: ./install.sh -v.
Script Details

The script performs the following actions:

    Checks if the shell is Bash, if not, attempts to change the shell to Bash.
    Updates the system's package list using apt-get update and upgrades the installed packages.
    Installs the apt-utils and software-properties-common packages if they're not already installed.
    Installs several essential apps, including curl, git, gcc, make, wget, emacs, python3, python3-pip, htop, openssh-client, rsync, and netcat.
    Checks if a .bashrc file exists, and creates a blank .bashrc file if it doesn't.
    Appends commands to the .bashrc file to source the .bash_aliases file if it exists.
    Downloads the .bash_aliases file from a GitHub repository using curl.
    Sources the .bashrc file so that the aliases take effect immediately.
    Downloads an Emacs config file from a GitHub repository using curl.
    Cleans up by fixing broken dependencies, removing unnecessary packages, and cleaning up the local repository of retrieved package files.

Troubleshooting

    If the script fails due to permission issues, you might need to run the script with sudo i.e., sudo ./install.sh.
    The verbose mode can provide more detailed output, which can help in troubleshooting issues.
    In container environments the script can take a long time to execute depending on available resources.

Contributions

Contributions are always welcome. Please submit a pull request if you would like to suggest improvements. 

________________________________________________________________________________________________

theme_script
The set-emacs-theme script takes the URL of a .el file, downloads it and set's it as the theme for emacs. This script assumes that the file is named the theme name. This makes it very easy to try out themes that can be found anywhere on the internet.

