A simple script that downloads a handful of useful apps, sets the shell to bash and downloads my config files for bash and emacs.

To use simply execute the post_install script, best used on a fresh install.

The flag -v or --verbose is available to see debugging info.

You will likely need to start a new shell session for the alias' to take effect, the same goes for the emacs config. 

theme_script
The set-emacs-theme script takes the URL of a .el file, downloads it and set's it as the theme for emacs. This script assumes that the file is named the theme name. This makes it very easy to try out themes that can be found anywhere on the internet.

