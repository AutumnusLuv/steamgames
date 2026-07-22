#!/usr/bin/env bash
set -e

echo "Downloading Steamgames..."

mkdir -p "$HOME/.steamgames"

curl -L https://github.com/AutumnusLuv/Steamgames/archive/refs/heads/main.zip -o /tmp/steamgames.zip

unzip -oq /tmp/steamgames.zip -d /tmp

cp -r /tmp/Steamgames-main/* "$HOME/.steamgames"

echo "Done!"
echo "Installed to $HOME/.steamgames"
