#!/usr/bin/env bash
#-------------------------------------------------------------------------
# Arch Linux Post Install Setup and Config
# Created by Antonino Praxedes 
#-------------------------------------------------------------------------

echo
echo "INSTALLING LightDM"
echo

PKGS=(
        'xorg'                         # Xorg
        'lightdm'                      # All the extras
        'lightdm-gtk-greeter'          # LightDM Add-ons
        'lightdm-gtk-greeter-settings' # LightDM Settings
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo