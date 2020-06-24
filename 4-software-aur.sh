#!/usr/bin/env bash
#-------------------------------------------------------------------------
# Arch Linux Post Install Setup and Config
# Created by Antonino Praxedes 
#--------------------------------------------------------------------------

echo
echo "INSTALLING AUR SOFTWARE"
echo

cd "${HOME}"

echo "CLONING: YaY"
git clone "https://aur.archlinux.org/yay.git"


PKGS=(

    # DEVELOPMENT ---------------------------------------------------------
    
    'visual-studio-code-bin'    # Kickass text editor
    'android-studio'            # Android Studio

    # PRODUCTIVITY --------------------------------------------------------

    'mugshot'                   # UX Login XFCE4
    'gnome-system-tools'        # Extra tools
    'ocs-url'                   # Working link xfce-look.org

    # THEMES --------------------------------------------------------------

    'gtk-theme-arc-git'
    'adapta-gtk-theme-git'
    'paper-icon-theme'
    'tango-icon-theme'
    'tango-icon-theme-extras'
    'numix-icon-theme'
    'numix-gtk-theme'
    'sardi-icons'
)


cd ${HOME}/yay
makepkg -si

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo