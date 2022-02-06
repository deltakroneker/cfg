# History in cache directory
HISTSIZE=15000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Colors and prompt
autoload -Uz colors && colors

# Autosuggestions
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh
alias config='/usr/bin/git --git-dir=/Users/nikolamilic/.cfg/ --work-tree=/Users/nikolamilic'

alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/Core"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/Core"
alias l="ls -lh"
alias ll="ls -lha"
