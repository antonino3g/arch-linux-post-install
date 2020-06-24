#!/usr/bin/env bash
#-------------------------------------------------------------------------
# Arch Linux Post Install Setup and Config
# Created by Antonino Praxedes 
#--------------------------------------------------------------------------

echo
echo "INSTALLING BLUETOOTH COMPONENTS"
echo

PKGS=(
        'bluez'                 # Daemons for the bluetooth protocol stack
        'bluez-utils'           # Bluetooth development and debugging utilities
        'bluez-firmware'        # Firmwares for Broadcom BCM203x and STLC2300 Bluetooth chips
        'blueberry'             # Bluetooth configuration tool
        'pulseaudio-bluetooth'  # Bluetooth support for PulseAudio

        # Deprecated ibraries for the bluetooth protocol stack.
        # I believe the blues package above is all that is necessary now,
        # but I havn't tested this out, so for now I install this too.
        'bluez-libs' 
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo