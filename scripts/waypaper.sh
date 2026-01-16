#!/usr/bin/env bash
if [ -f /usr/bin/waypaper ]; then
    echo ":: Launching waybar in /usr/bin"
    waypaper &
elif [ -f "$HOME/.local/bin/waypaper" ]; then
    echo ":: Launching waybar in $HOME/.local/bin"
    "$HOME/.local/bin/waypaper" "$1" &
else
    echo ":: waypaper not found"
fi
