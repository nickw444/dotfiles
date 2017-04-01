set +eux

echo "Install Homebrew?"
echo "Install oh-my-zsh?"
echo "Install iTerm?"
echo "Install Sublime?"
echo "Install Chrome?"
echo "Install Dropbox?"
echo "Install Better Touch Tool?"

echo "Link subl binary?"
echo "Sync sublime settings with Dropbox?"

DIR=$PWD;

echo "Linking dotfiles...";
for f in dot_*
do
	SRC="$DIR/$f";
	DEST="$HOME/$(echo "$f" | sed "s/dot_/./")"
	echo "$SRC -> $DEST";
	rm $DEST;
 	ln -s $SRC $DEST;
done
