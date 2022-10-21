#! /usr/bin/bash

#============================================
# Packages from the official Arch repository
#============================================

declare -a OFFICIAL_PKGS=(
  # Terminal
  "yakuake"                             # Dropdown terminal, if you are into it
  
  # IDEs and similars (Nothing here yet)
  
  # SDKs
  "dotnet-runtime"                      # It's time to run, dotnet
  "aspnet-runtime"                      # You really expected the same joke twice?

  # Communication
  "discord"                             # Best Gaming/Misc Communication App

  # Docker
  "docker"                              # Container Manager
  "docker-compose"                      # Container Builder

  # Photoshop
  "gimp"                                # Photoshop to people that can't pay for the real photoshop (me)
  "gpick"                               # Best color picker

  # CLI
  "ranger"                              # Fast file navigation
  "neofetch"                            # Because real programmers needs to see their pretty and powerfull PCs 
  "lazygit"                             # Real programmers are as lazy as they can
  "python-pipenv"                       # Python meets node.js package manager

  # Browser
  "chromium"                            # Naked Google Chrome
  "firefox"                             # A Fox that is on fire (thanks for creating rust)

  # E-mail
  "thunderbird"                         # Because sending a fax is too much bloat
  
  # Fonts
  "ttf-roboto"                          # Google's most used (in android) font
  "noto-fonts-emoji"                    # Emojis

  # Tools
  "qbittorrent"                         # For downloading legal files in the fastest way
  "thunderbird"                         # The best mail manager
  "libreoffice-fresh"                   # Microsoft Office Package, but for free
  "jdk-openjdk"                         # Java development kit, but the better version
  "keychain"								            # Handle ssh-agent
)

#============================================
# Packages from the Arch User Repository
#============================================

declare -a AUR_PKGS=(
  # IDEs and similars
  "insomnia-bin"
  "visual-studio-code-bin"
  "jetbrains-toolbox"

  # Communication
  "discord-ptb"                         # Why having only one, when you can have multiples?
  "zoom"                                # S U F F E R I N G

  # Music
  "spotify"                             # If you pay for listening

  # Photoshop (Nothing here yet)

  # CLIs
  "pgloader"                            # PostgreSQL dump loader
  "nvm"                                 # Node Version Manager

  # Browsers
  "google-chrome"                       # For people that don't love their ram sticks
  "google-chrome-dev"                   # For people that REALLY don't love their ram sticks

  # Fonts
  "nerd-fonts-fira-code"                # You're not a real nerd if your pc doesn't tell you that

  # Tools
  "update-grub"                         # To people that likes to play in Windows
  "antigen"
)

#============================================
# Installation
#============================================

# Install everything from the official repository
sudo pacman -Suy --needed "${OFFICIAL_PKGS[@]}"

# Install everything from the AUR
yay -Sy --needed "${AUR_PKGS[@]}"
