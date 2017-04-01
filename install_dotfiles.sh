set +eux

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
