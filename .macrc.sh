# ----------------------------------------------------------------
# piratematt's things
# ----------------------------------------------------------------

# Fun Aliases
alias die='exit'

# Useful when changing zshell rc's
alias re.source='source ~/.zshrc';
alias r.s='re.source';

# Hidden Files are Scurvy
# Show/Hide them in finder.
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app';
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app';

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

#Rename tab/window
function tabname { printf "\e]1;$1\a"; }
function winname { printf "\e]2;$1\a"; }
alias tn='tabname'

# -----------------------------------------
# From Troy (BidPal)
# ----------------------------------------------------------------

# Command prompt.
# Some day spend some time coming up with your own here...
# export PS1="\n\[\e[37;44;1m\]\u@\h \w \$(git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/[\1]/') \$\[\e[0m\] "