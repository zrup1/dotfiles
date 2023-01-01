#!/bin/sh
#Updates keyring & system
sudo pacman -Syy
sudo pacman -Syu
#Installs the applications
sudo pacman -S mpv vlc firefox neofetch htop wget curl git base-devel lxsession lxappearance picom nvidia-settings nvidia-utils discord fish zsh gparted lxrandr neovim nitrogen ranger rofi nemo nemo-fileroller zip unzip alacritty dconf-editor
