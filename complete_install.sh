#! /usr/bin/bash

#============================================
# Complete Installation
#============================================

# Install all packages ---------------------
echo "> Installing all required packages..."
source "${PWD}/install_scripts/install_packages.sh"

# Install VSCode extensions ------------------------------
echo "> Installing all the required VSCode extensions..."
source "${PWD}/install_scripts/install_vscode_extensions.sh"

# Install dotfiles ------------------------------
echo "> Installing all the required dotfiles..."
source "${PWD}/configs/install_zshrc.sh"
