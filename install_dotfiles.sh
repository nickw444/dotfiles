set +eux

DIR=$PWD;

echo "Linking dotfiles...";
for f in dot_*
do
	SRC="$DIR/$f";
	DEST="$HOME/$(echo "$f" | sed "s/dot_/./")"
	echo "$SRC -> $DEST";
    if [ -f $DEST ]; then
	   rm $DEST;
    fi
 	ln -s $SRC $DEST;
done
