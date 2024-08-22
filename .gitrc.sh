# Typing is hard.
# Shortened frequent commands
alias gs='git status';
alias gfr='echo "git fetch --prune && git rebase"; git fetch --prune && git rebase';
# I don't care about whitespace, nor package-lock.json changes
alias gd="git diff -w -- . ':(exclude)package-lock.json' ':(exclude)package-lock.json'";

# Fix GPG Signing
# when gpg siging fails read this —> https://gist.github.com/paolocarrasco/18ca8fe6e63490ae1be23e84a7039374?permalink_comment_id=3767413#gistcomment-3767413
alias fix.gpg='echo "echo \"test\" | gpg --clearsign"; echo "test" | gpg --clearsign; echo "export GPG_TTY=$(tty)"; export GPG_TTY=$(tty); echo "echo \"test\" | gpg --clearsign"; echo "test" | gpg --clearsign;'
