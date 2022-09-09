#!/usr/bin/env sh

while read -r pkg; do
    apt install "$pkg" -y
done </tmp/requirements.txt
