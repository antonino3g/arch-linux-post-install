#!/usr/bin/env bash
#-------------------------------------------------------------------------
# Arch Linux Post Install Setup and Config
# Created by Antonino Praxedes 
#-------------------------------------------------------------------------

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-zen'             # Long term support kernel

    # TERMINAL UTILITIES --------------------------------------------------

    'curl'                  # Remote content retrieval
    'file-roller'           # Archive utility
    'gtop'                  # System monitoring via terminal
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'speedtest-cli'         # Internet speed via terminal
    'unrar'                 # RAR compression program
    'unzip'                 # Zip compression program
    'wget'                  # Remote content retrieval
    'xfce4-terminal'        # Terminal emulator
    'zenity'                # Display graphical dialog boxes via shell scripts
    'zip'                   # Zip compression program
    'zsh'                   # ZSH shell
    'zsh-completions'       # Tab completion for ZSH

    # DISK UTILITIES ------------------------------------------------------

    'autofs'                # Auto-mounter
    'exfat-utils'           # Mount exFat drives
    'gparted'               # Disk utility
    'gnome-disks'           # Disk utility
    'ntfs-3g'               # Open source implementation of NTFS file system
    'parted'                # Disk utility
    'gvfs'                  # Disk utility
    'gvfs-afc'              # Disk utility
    'gvfs-gphoto2'          # Disk utility
    'gvfs-mtp'              # Disk utility
    'gvfs-smb'              # Disk utility

    # NEW LINE FROM MY FSTAB 
    # /dev/sdb3 /home/worness/Arquivos_D/ ntfs-3g umask=000 0 0

    # GENERAL UTILITIES ---------------------------------------------------

    'catfish'               # Filesystem search
    'conky'                 # System information viewer
    'nemo'                  # Filesystem browser
    'veracrypt'             # Disc encryption utility
    'variety'               # Wallpaper changer
    'xfburn'                # CD burning application

    # AUDIO ---------------------------------------------------------------
    
    'alsa-utils'            # Advanced Linux Sound Architecture (ALSA) Components https://alsa.opensrc.org/
    'alsa-plugins'          # ALSA plugins
    'pulseaudio'            # Pulse Audio sound components
    'pulseaudio-alsa'       # ALSA configuration for pulse audio
    'pavucontrol'           # Pulse Audio volume control
    'volumeicon'            # System tray volume control

    # DEVELOPMENT ---------------------------------------------------------

    'dbeaver'               # Database administration tool
    'docker'                # Docker
    'git'                   # Version control system
    'gcc'                   # C/C++ compiler
    'glibc'                 # C libraries
    'jdk8-openjdk'          # JDK 8
    'nodejs'                # Javascript runtime environment
    'npm'                   # Node package manager
    'python'                # Scripting language
    'qt4'                   # Lib for softwares based QT
    'yarn'                  # Dependency management (Hyper needs this)

    # WEB TOOLS -----------------------------------------------------------

    'firefox'               # Web browser
    # 'firefox-i18n-pt-br'  # Firefox Portuguese Brazil
    'filezilla'             # FTP Client
    'flashplugin'           # Flash

    # MEDIA ---------------------------------------------------------------

    'audacious'             # Music player
    'simplescreenrecorder'  # Record your screen
    'vlc'                   # Video player
    'xfce4-screenshooter'   # Screen capture.

    # GRAPHICS AND DESIGN -------------------------------------------------

    'gcolor2'               # Colorpicker
    'gimp'                  # GNU Image Manipulation Program
    'ristretto'             # Multi image viewer

    # PRODUCTIVITY --------------------------------------------------------

    'ffmpeg'                # Converter videos
    'galculator'            # Gnome calculator
    'mousepad'              # XFCE simple text editor
    'xpdf'                  # PDF viewer
    'ntp'                   # Clock
    'gnome-font-viewer'     # GUI install fonts

    # sudo systemctl enable ntpdate.service
    # sudo systemctl start ntpdate.service
    # timedatectl set-ntp true

    # THEMES --------------------------------------------------------------

    'xfce4-whiskermenu-plugin'
    'materia-gtk-theme'
    'papirus-icon-theme'
    'gnome-icon-theme'
    'plank'
    'noto-fonts-emoji'	    # Emoji terminal 

    # xfce4-popup-whiskermenu ON PRESS Super Buntton
    # plank --preferences
    # Fonts: Cantarell Regular

)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
