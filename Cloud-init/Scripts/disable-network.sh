#!/usr/bin/env bash
# Author: Juliano

CONFIG_FILE="/opt/script/99-disable-network-config.cfg"

CONFIG_DIR="/etc/cloud/cloud.cfg.d/"

if [ ! -e $CONFIG_FILE ]; then
    echo "file $CONFIG_FILE not found.!"
    exit 1
fi

if [ ! -e $CONFIG_DIR ]; then
    echo "directory $CONFIG_DIR not found.!"
    exit 1
fi

sudo mv "$CONFIG_FILE" "$CONFIG_DIR"

if [ -f "$CONFIG_FILE" ]; then
    echo "Err. File not moved."
else
    echo "File $CONFIG_FILE moved to the $CONFIG_DIR, directory."
fi

echo "Success!"

# Auto delete no arquivo
rm -f "$0"
