#!/bin/bash

# O Matugen vai injetar o HEX com hashtag aqui (ex: #FF5555)
PRIMARY_COLOR="{{colors.primary_container.default.hex}}"

# Removemos a hashtag para o OpenRGB ler corretamente (fica: FF5555)
CLEAN_HEX="${PRIMARY_COLOR//#/}"

# Envia a cor para os LEDs
openrgb -m direct -c "$CLEAN_HEX"
