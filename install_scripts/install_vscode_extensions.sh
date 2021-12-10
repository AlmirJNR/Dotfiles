#! /usr/bin/bash

#============================================
# Extensions IDs to install
#============================================

declare -a VSCODE_EXTENSIONS=(
  "formulahendry.auto-close-tag"
  "formulahendry.auto-rename-tag"
  "ms-vscode.cpptools"
  "ms-dotnettools.csharp"
  "ms-vscode.cmake-tools"
  "ms-azuretools.vscode-docker"
  "icrawl.discord-vscode"
  "editorconfig.editorconfig"
  "dbaeumer.vscode-eslint"
  "ecmel.vscode-html-css"
  "ms-vscode.vscode-typescript-next"
  "ms-vscode.live-server"
  "ritwickdey.live-sass"
  "ritwickdey.liveserver"
  "ms-vsliveshare.vsliveshare"
  "lostintangent.vsls-whiteboard"
  "yzhang.markdown-all-in-one"
  "oderwat.indent-rainbow"
  "pkief.material-icon-theme"
  "ms-vscode-remote.remote-containers"
  "sibiraj-s.vscode-scss-formatter"
  "mrmlnc.vscode-scss"
  "foxundermoon.shell-format"
  "visualstudioexptteam.vscodeintellicode"
  "tomoki1207.pdf"
  "johnsoncodehk.volar"
)

#============================================
# Install each extension
#============================================

for EXTENSION in "${VSCODE_EXTENSIONS[@]}"
do
  code --install-extension "$EXTENSION"
done
