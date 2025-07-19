#!/bin/bash

# --- PIN check ---
read -p "Enter PIN to continue: " pin
if [ "$pin" != "17832" ]; then
    echo 'Is this not the first time starting? Run "bash restart.sh" instead if that's the case!'
    exit 1
fi

# --- Step 1 ---
bash start.sh
wait
echo "EaglerCux 1/3"
echo "Buffering..."
sleep 3

# --- Step 2 ---
bash restart.sh
wait
echo "EaglerCux 2/3"

# --- Step 3: Monitor for URL pattern ---
echo "EaglerCux 3/3"
echo "Buffering..."
sleep 3

url=""
while IFS= read -r line; do
    if [[ "$line" =~ https://playit\.gg/mc/[a-zA-Z0-9]+ ]]; then
        url="${BASH_REMATCH[0]}"
        break
    fi
done < <(bash restart.sh 2>&1)

# --- Print terminal hyperlink ---
if [ -n "$url" ]; then
    echo -e "\e]8;;$url\e\\Open Panel\e]8;;\e\\"
fi
