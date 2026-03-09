#!/bin/bash
# Package Cleaner

echo "🗑️ Removing non-essential packages..."

while IFS= read -r package || [[ -n "$package" ]]; do
    if [[ ! $package =~ ^# && -n $package ]]; then
        echo "Removing: $package"
        adb shell pm uninstall -k --user 0 "$package" 2>/dev/null
    fi
done < "debloat.conf"

echo "✨ System cleaned."
