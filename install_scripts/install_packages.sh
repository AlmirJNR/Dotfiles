#! /usr/bin/bash

#============================================
# Packages from the official Arch repository
#============================================

declare -a OFFICIAL_PKGS=(
  # IDEs and similars (Nothing here yet)

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

  # Browser
  "chromium"                            # Naked Google Chrome
  "firefox"                             # A Fox that is on fire
  
  # Fonts
  "ttf-roboto"                          # Google's official font (2021)
  "noto-fonts-emoji"                    # Emojis

  # Tools
  "qbittorrent"                         # For downloading legal files in the fastest way
  "thunderbird"                         # The best mail manager
  "libreoffice-fresh"                   # Microsoft Office Package, but for free
  "jdk-openjdk"
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
  "slack-desktop"                       # Microsoft Teams, but not really

  # Docker (Nothing here yet)

  # Photoshop (Nothing here yet)

  # CLIs
  "pnpm"                                # Better than regular node packager manager
# "vue-cli"                             # Vue cli
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
