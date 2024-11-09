#!/bin/bash

for file in ~/scripts/clear/*; do
    [ -f "$file" ] && [ -x "$file" ] && "$file"
done

for i in {1..6}; do
    i3-resurrect restore -w $i --programs-only
    sleep 3
    i3-resurrect restore -w $i --layout-only
done

# Switch focus back to workspace 1
i3-msg "workspace number 1"

