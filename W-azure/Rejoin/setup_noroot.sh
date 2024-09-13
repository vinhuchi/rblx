#!/bin/bash

DDIR="/storage/emulated/0/Download"
TERMUXDIR="$DDIR/termux.dist"
HOMEDIR="/data/data/com.termux/files/home/termux.dist"
ZIP_FILE="$DDIR/termux.dist.zip"

ARCH=$(dpkg --print-architecture)
if [ "$ARCH" == "aarch64" ]; then
  GZ="https://github.com/vinhuchi/rblx/raw/main/W-azure/Rejoin/aarch64/termux.dist.zip"
elif [ "$ARCH" == "x86_64" ]; then
  GZ="https://github.com/vinhuchi/rblx/raw/main/W-azure/Rejoin/x86_64/termux.dist.zip"
else
  echo "Unsupported architecture: $ARCH"
  exit 1
fi

if [ ! -d "$TERMUXDIR" ]; then
  curl -L -o "$ZIP_FILE" "$GZ"
  unzip "$ZIP_FILE" -d "$DDIR"
  rm "$ZIP_FILE"
else
  echo "Directory already exists"
fi

cp -r "$TERMUXDIR" "$HOMEDIR"
cd "$DDIR" && chmod -R 755 "$HOMEDIR" && "$HOMEDIR/termux.bin"
