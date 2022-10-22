#Matt's personal alias config
# :)

#make cp,mv and rm default to interactive mode
alias cp='cp -i'
alias mv='mv -i'
#This felt redundant, being asked for confirmation to RM seems dumb
# alias rm='rm -i'

#Git aliases
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gcb="git commit -m 'fixed formatting to satisfy linter'"
alias gip='git pull'
alias gs='git status'

#clear the screen
alias c='clear'

#see a history of commands
alias hg='history | grep'

#emacs
alias e='emacs'

#Add -pv flag to mkdir
alias mkdir='mkdir -pv'

#make an empty header file with guards
alias e.h='echo -e "#ifndef _MAIN_H_\n#define _MAIN_H_\n\n#endif /* _MAIN_H_ */" > main.h'

#create an empty readme file
alias e.r='echo -e "<h1></h1>\n<h2>By $AUTHOR</h2>" > README.md'

#list running processes
alias pp='ps -aux'

#kill processes
alias kk='kill -9 -1'

#todo
#
#
#