alias k1='kill %1' # Kill the last process that has been bg'd
alias fuck='sudo $(fc -ln -1)' # Re-run the last command as sudo

alias gl="git log --graph --oneline --decorate --all" # Show git log in a tree for all branches
alias glm="git log --graph --oneline --decorate" # Show git log in a tree for this branch only
alias gcad='git commit --amend --date "$(date)"' # Amend latest commit date to now
alias gfp='git fetch -p' # Git fetch and purge non existing remote branches

alias nom='export PATH=$PWD/node_modules/.bin:$PATH' # Add Node Modules to Path
alias binds='sudo lsof -i -n -P | grep TCP'

SYS_PIP=$(which pip);

pip() {
    if [ "$VIRTUAL_ENV" == "" ]; then;
        echo "Not inside a virtualenv. Are you sure? [Y/n]";
        read answer
        case $answer in
            'Y' ) ;;
            'y' ) ;;
            '') ;;
            * ) return 1 ;;
        esac
        $SYS_PIP $@;
    else
        PIP="$VIRTUAL_ENV/bin/pip"
        $PIP $@;
    fi;
}
