alias k1='kill %1' # Kill the last process that has been bg'd
alias fuck='sudo $(fc -ln -1)' # Re-run the last command as sudo

alias gl="git log --graph --oneline --decorate --all" # Show git log in a tree for all branches
alias glm="git log --graph --oneline --decorate" # Show git log in a tree for this branch only
alias gcad='git commit --amend --date "$(date)"' # Amend latest commit date to now
alias gfp='git fetch -p' # Git fetch and purge non existing remote branches
alias halp="git for-each-ref --color=always --sort=-committerdate refs/heads --format='%(HEAD)%(color:yellow)%(refname:short)|%(color:bold green)%(committerdate:relative)|%(color:blue)%(subject)|%(color:magenta)%(authorname)%(color:reset)' | column -ts'|'  | grep Nick | less -S"
alias gsl="git stash list"
alias glsig="git log --graph --oneline --decorate --pretty=\"format:%h %G? %aN  %s\""


alias nom='export PATH=$PWD/node_modules/.bin:$PATH' # Add Node Modules to Path
alias binds='sudo lsof -i -n -P | grep TCP'
alias signon='git config --global commit.gpgsign true'
alias signoff='git config --global commit.gpgsign false'

git_log_grep () {
    git branch |
    grep $1 |
    sed -e "s/** //g" |
    xargs git log --oneline --decorate --graph $2
}

alias del='rmtrash'
alias trash='rmtrash'
alias gh='github-info'

