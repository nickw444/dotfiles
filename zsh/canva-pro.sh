unalias gr
alias lgtms='git checkout master && ggpull && git checkout - && /Users/nickw/work/canva/tools/check-lgtms/check_lgtms.sh';

alias gll="git log --graph --oneline --decorate --all" # Show git log in a tree for all branches
alias gl='git log --graph --oneline --decorate $(git branch | cut -c 3- | grep nwhyte) master' # Show only nwhyte branches + master + green
alias gln='git log --oneline --graph --decorate $(git branch | cut -c 3- | grep nwhyte)' # Visualise all branches with nwhyte.


alias my_branches='gb  | grep nwhyte | sed "s/^\*//" | sed "s/^\ *//"';
alias my_upstreams='git branch -r | grep nwhyte | sed "s/^*//" | sed "s/\ *origin\///" | sort'
alias since_last_release='git log --oneline origin/release-$name-rc...HEAD --author=nick'

orphaned_branches() {
    my_upstreams > "/tmp/upstreams.txt";
    my_branches | comm -23 - "/tmp/upstreams.txt";
    rm "/tmp/upstreams.txt";
}


be_owner() {
  OWNER='nick@canva.com';
  FILE="$1/OWNERS";

  if [ -e "$FILE" ]; then
    if grep $OWNER $FILE > /dev/null; then
      echo "$OWNER is already an owner.";
      return 1;
    fi
  fi
  echo "Adding $OWNER as an owner"
  echo $OWNER >> "$1/OWNERS";
  echo "$FILE now looks like:"
  cat $FILE;
}

export GOPATH=~/go
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:~/go/bin:~/work/scripts:~/work/scripts/bin:~/work/scripts/productivity-hacks
signon


. /Users/nickw/.nix-profile/etc/profile.d/nix.sh


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/nickw/work/canva/web/tools/renderer/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/nickw/work/canva/web/tools/renderer/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/nickw/work/canva/web/tools/renderer/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/nickw/work/canva/web/tools/renderer/node_modules/tabtab/.completions/sls.zsh

prompt_context() {
  # Only show the first char of the username
  prompt_segment black white "%(!.%{%F{yellow}%}.)$USER[1]@%m"
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "(%{$fg_bold[black]%}${ref#refs/heads/}%{${reset_color}%})"
}
