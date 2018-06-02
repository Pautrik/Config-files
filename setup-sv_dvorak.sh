#!/bin/sh

PACKAGE=keyboardctl
KEYBOARDCTL_INSTALLED=false

if ! pacman -Qi $PACKAGE > /dev/null; then
    sudo pacman -S keyboardctl --noconfirm
fi

sudo bash -c 'cat sv_dvorak >> /usr/share/X11/xkb/symbols/se'
sudo setxkbmap se sv_dvorak
sudo keyboardctl -l se sv_dvorak
