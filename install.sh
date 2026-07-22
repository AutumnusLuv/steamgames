#!/usr/bin/env bash
set -e

echo "Downloading Steamgames..."

INSTALL_DIR="$HOME/.steamgames"

mkdir -p "$INSTALL_DIR"

curl -L https://github.com/AutumnusLuv/Steamgames/archive/refs/heads/main.zip -o /tmp/steamgames.zip

rm -rf /tmp/steamgames-extract
mkdir /tmp/steamgames-extract

unzip -oq /tmp/steamgames.zip -d /tmp/steamgames-extract

cp -r /tmp/steamgames-extract/steamgames-main/* "$INSTALL_DIR"

echo "Done!"
echo "Installed to $INSTALL_DIR"
