#Matt's personal alias config
# :)

#make cp,mv and rm default to interactive mode
alias cp='cp -i'
alias mv='mv -i'
#This felt redundant, being asked for confirmation to RM seems dumb, left here incase it becomes apparent that this is actually a good idea
# alias rm='rm -i'

#Git aliases
alias ga='git add'
#git commit has been replaced with a function below
alias gp='git push'
alias gip='git pull'
alias gs='git status'

#clear the screen
alias c='clear'

#see a history of commands, not working on my sandbox atm, don't know why yet
alias hg='history | grep'

#emac
alias e='emacs'

#Add -pv flag to mkdir
alias mkdir='mkdir -pv'

#make an empty header file with guards
alias e.h='echo -e "#ifndef _MAIN_H_\n#define _MAIN_H_\n\n#endif /* _MAIN_H_ */" > main.h'


#list running processes
alias pp='ps -aux'

#kill processes
alias kk='kill -9 -1'

###############
###FUNCTIONS###
###############

#git commit
gc () {
git commit -m '$1'
}

#create an empty c template
e.c () {
echo -e "#include <stdio.h>\n#include <stdlib.h>\n\n/**\n *\n *\n *\n*/" > $1
emacs -nw $1
}

#create a holberton readme template
e.hr () {
echo -e "<h1>$1</h1>\n<h2>By bigBadMatt</h2>\nRepo of projects directly relating to $1, produced for assesment purposes for Holberton School" > README.md
}

#git add/commit/push for linter
g.b () {
git add $1
git commit -m 'fixed formatting to satisfy linter'
git push
}

#git add->commit->push in a single line, but dont make a mistake lol
g.acp () {
git add $1
git commit -m "$2"
git push
}