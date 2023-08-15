#!/bin/bash
set -euo pipefail

if [ "$(uname)" = "Linux" ]; then
    localectl status | sed -n 's/.*X11 Layout: \(.*\)/⌨ \1/p'
elif [ "$(uname)" = "Darwin" ]; then
    defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep "KeyboardLayout Name" | cut -f 2 -d "=" | tr -d ' ;."'
fi