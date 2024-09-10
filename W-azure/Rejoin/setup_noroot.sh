GZ="https://github.com/vinhuchi/rblx/raw/main/W-azure/Rejoin/termux.dist.zip"
DDIR="/storage/emulated/0/Download"
TERMUXDIR="$DDIR/termux.dist"
HOMEDIR="/data/data/com.termux/files/home/termux.dist"
ZIP_FILE="$DDIR/termux.dist.zip"

if [ ! -d "$TERMUXDIR" ]; then
  curl -L -o "$ZIP_FILE" "$GZ"
  unzip "$ZIP_FILE" -d "$DDIR"
  rm "$ZIP_FILE"
else
  echo "Exist"
fi

cp -r "$TERMUXDIR" "$HOMEDIR"
cd "$DDIR" && chmod -R 755 "$HOMEDIR" && "$HOMEDIR/termux.bin"
