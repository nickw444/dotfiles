alias lgtms='git checkout master && ggpull && git checkout - && /Users/nickw/work/canva/tools/check-lgtms/check_lgtms.sh';
alias grebase='git checkout green && ggpull && git checkout - && git rebase green';

alias gll="git log --graph --oneline --decorate --all" # Show git log in a tree for all branches
alias gl='git log --graph --oneline --decorate $(git branch | cut -c 3- | grep nwhyte) master green' # Show only nwhyte branches + master + green
alias gln='git log --oneline --graph --decorate $(git branch | cut -c 3- | grep nwhyte)' # Visualise all branches with nwhyte.


drebase() {
    if [ $# -ne 1 ]; then
        echo "Usage: $0 <branch to rebase onto>";
        return 1
    fi;

    echo ">" git rebase --onto "$1" "${1}@{1}";
    git rebase --onto "$1" "${1}@{1}";
}



alias my_branches='gb  | grep nwhyte | sed "s/^\*//" | sed "s/^\ *//"';
alias my_upstreams='git branch -r | grep nwhyte | sed "s/^*//" | sed "s/\ *origin\///" | sort'

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
