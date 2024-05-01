#! /usr/bin/bash

#============================================
# Packages
#============================================

declare -a OFFICIAL_PKGS=()

#============================================
# Installation
#============================================

# Add custom repositories
# -TODO-

# Upgrade and Update
sudo apt upgrade && sudo apt update

# Install everything from the official repository
sudo apt install "${OFFICIAL_PKGS[@]}"

# Install everything from the *
# -TODO-
