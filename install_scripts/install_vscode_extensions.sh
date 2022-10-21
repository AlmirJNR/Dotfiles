#! /usr/bin/bash

#============================================
# Extensions IDs to install
#============================================

declare -a VSCODE_EXTENSIONS=(
  "Angular.ng-template"
  "Arjun.swagger-viewer"
  "Dart-Code.dart-code"
  "Dart-Code.flutter"
  "dbaeumer.vscode-eslint"
  "ecmel.vscode-html-css"
  "EditorConfig.EditorConfig"
  "formulahendry.auto-close-tag"
  "formulahendry.auto-rename-tag"
  "foxundermoon.shell-format"
  "glenn2223.live-sass"
  "hediet.vscode-drawio"
  "icrawl.discord-vscode"
  "josetr.cmake-language-support-vscode"
  "lostintangent.vsls-whiteboard"
  "luanpotter.dart-import"
  "mrmlnc.vscode-scss"
  "ms-azuretools.vscode-docker"
  "ms-dotnettools.csharp"
  "ms-dotnettools.vscode-dotnet-runtime"
  "ms-python.python"
  "ms-python.vscode-pylance"
  "ms-vscode-remote.remote-containers"
  "ms-vscode.cmake-tools"
  "ms-vscode.cpptools"
  "ms-vscode.live-server"
  "ms-vscode.vscode-typescript-next"
  "ms-vsliveshare.vsliveshare"
  "oderwat.indent-rainbow"
  "PKief.material-icon-theme"
  "redhat.vscode-xml"
  "redhat.vscode-yaml"
  "ritwickdey.LiveServer"
  "sibiraj-s.vscode-scss-formatter"
  "tomoki1207.pdf"
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
