# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# Docker
alias dc="docker-compose"
alias dps="docker ps"
alias dpsa="docker ps -a"

# Git
alias commit="git add . && git commit -m"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
alias gpf="git pull --ff-only"
alias gpr="git pull --rebase"
alias gs="git status"
alias gsl="git stash list | cat"
