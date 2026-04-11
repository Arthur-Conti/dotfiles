#!/bin/bash
# Pega o estado atual de opacidade da janela ativa
STATUS=$(hyprctl activewindow -j | jq -r '.opaque')

if [ "$STATUS" = "false" ]; then
  hyprctl setprop active opaque true
else
  hyprctl setprop active opaque false
fi
