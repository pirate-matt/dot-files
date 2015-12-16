# pirate-matt's cool things
# -----------------------------------------

#Rename tab/window
function tabname { printf "\e]1;$1\a"; }
function winname { printf "\e]2;$1\a"; }
alias tn='tabname'

# Fun Aliases
alias die='exit'

# Homebrew Customizations

# Makes PATH look for /usr/local/bin before /usr/bin  (brew puts stuff in /usr/local/bin)
export PATH=/usr/local/bin:$PATH

# List Shortcuts
alias ll='ls -l'
alias la='ls -a'
alias l='ls'
alias lall='ls -all'

# Who wants to type 'clear' all the time?
# (note: these use the above list shortcuts)
alias cl='clear'
alias cls='clear; echo "ls"; ls'
alias cll='clear; echo "ls"; ll'
alias cla='clear; echo "ls"; la'
alias clall='clear; echo "ls"; lall'




# From Troy (BidPal)
# -----------------------------------------

# Command prompt.
# Some day spend some time coming up with your own here...
# export PS1="\n\[\e[37;44;1m\]\u@\h \w \$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/[\1]/') \$\[\e[0m\] "


# Git

# Git Autocomplete
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
 . /usr/local/etc/bash_completion.d/git-completion.bash
fi

# Git- asterisk on the branch if modified and uncommitted
GIT_PS1_SHOWDIRTYSTATE=true
