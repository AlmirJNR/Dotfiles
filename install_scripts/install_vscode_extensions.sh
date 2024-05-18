#! /usr/bin/bash

#============================================
# Extensions IDs to install
#============================================

declare -a VSCODE_EXTENSIONS=(
  "dbaeumer.vscode-eslint"
  "ecmel.vscode-html-css"
  "EditorConfig.EditorConfig"
  "formulahendry.auto-close-tag"
  "formulahendry.auto-rename-tag"
  "foxundermoon.shell-format"
  "glenn2223.live-sass"
  "hediet.vscode-drawio"
  "josetr.cmake-language-support-vscode"
  "mrmlnc.vscode-scss"
  "ms-python.python"
  "ms-python.vscode-pylance"
  "ms-vscode.cmake-tools"
  "ms-vscode.cpptools"
  "ms-vscode.live-server"
  "ms-vscode.vscode-typescript-next"
  "ms-vsliveshare.vsliveshare"
  "PKief.material-icon-theme"
  "redhat.vscode-xml"
  "redhat.vscode-yaml"
  "sibiraj-s.vscode-scss-formatter"
  "twxs.cmake"
  "usernamehw.errorlens"
  "VisualStudioExptTeam.intellicode-api-usage-examples"
  "VisualStudioExptTeam.vscodeintellicode"
  "yzhang.markdown-all-in-one"
)

#============================================
# Install each extension
#============================================

for EXTENSION in "${VSCODE_EXTENSIONS[@]}"
do
  code --install-extension "$EXTENSION"
done
