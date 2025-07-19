#!/bin/bash

# --- PIN check ---
read -rp "Enter PIN to continue: " pin
if [ "$pin" != "17832" ]; then
    echo "Is this not the first time starting? Run \"bash restart.sh\" instead if that's the case!"
    exit 1
fi

# --- Step 1 ---
if ! bash start.sh; then
    echo "Failed to execute start.sh"
    exit 1
fi
echo "EaglerCux 1/3"
echo "Buffering..."
sleep 3

# --- Step 2 ---
if ! bash restart.sh; then
    echo "Failed to execute restart.sh"
    exit 1
fi
echo "EaglerCux 2/3"

# --- Step 3: Monitor for URL pattern ---
echo "EaglerCux 3/3"
echo "Buffering..."
sleep 3

# Run restart.sh and capture output
url=""
while IFS= read -r line; do
    if [[ "$line" =~ https://playit\.gg/mc/[a-zA-Z0-9]+ ]]; then
        url="${BASH_REMATCH[0]}"
        break
    fi
done < <(bash restart.sh 2>&1)

# --- Print terminal hyperlink ---
if [ -n "$url" ]; then
    echo -e "\e]8;;$url\aClick here to open the panel\e]8;;\a"
else
    echo "No URL was detected in the output."
fi
