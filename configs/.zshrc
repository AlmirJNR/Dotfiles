# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z dotnet golang zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export EDITOR="micro"

# Aliases
alias ls="exa --long --all --header --git --icons --group-directories-first"
alias cat="batcat -p"
alias editzshrc="$EDITOR ~/.zshrc"
alias editsshconfig="$EDITOR ~/.ssh/config"
alias top="btop"
alias dockerps="docker container ps --all --format 'Id: {{.ID}}\nName: {{.Names}}\nStatus: {{.Status}}\nPorts: {{.Ports}}\n'"
alias lgit="lazygit"
alias ldoc="lazydocker"
alias edt="$EDITOR"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Updates the path with work bin every new session
if [ -d "$HOME/Work/bin" ]; then
	PATH="$PATH:$HOME/Work/bin"
fi

# Android emulator
if [ -d "$HOME/Android/Sdk" ]; then
	export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
	PATH="$PATH:$ANDROID_SDK_ROOT/emulator"
	PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools"
	PATH="$PATH:$ANDROID_SDK_ROOT/build-tools"
fi
