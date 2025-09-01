#!/bin/bash

sudo pacman -Syu --noconfirm

if ! command -v yay &> /dev/null; then
    sudo pacman -S --noconfirm yay
else
    echo "yay is already installed."
fi

sudo pacman -S --noconfirm libreoffice-fresh
yay -S --noconfirm spotify
yay -S --noconfirm brave-bin
yay -S --noconfirm visual-studio-code-bin
sudo pacman -S --noconfirm evince
sudo pacman -S --noconfirm cava

command -v libreoffice >/dev/null 2>&1 && echo "LibreOffice installed successfully."
command -v spotify >/dev/null 2>&1 && echo "Spotify installed successfully."
command -v brave >/dev/null 2>&1 && echo "Brave browser installed successfully."
command -v code >/dev/null 2>&1 && echo "VSCode installed successfully."
command -v evince >/dev/null 2>&1 && echo "Evince installed successfully."
command -v cava >/dev/null 2>&1 && echo "cava installed successfully."

echo "Installation complete!"

