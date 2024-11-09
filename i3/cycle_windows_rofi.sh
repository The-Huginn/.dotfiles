#!/bin/bash

# Get the class of the currently focused window
current_window_id=$(xdotool getwindowfocus)
current_class=$(xprop -id "$current_window_id" WM_CLASS | awk -F '"' '{print $4}')

# List all windows with the exact same class and pass them to rofi
wmctrl -lx | grep -i "\b$current_class\b" | awk '{print $1, $4, substr($0, index($0, $5))}' | \
rofi -dmenu -i -p "Select window:" | \
awk '{print $1}' | xargs -r wmctrl -ia

