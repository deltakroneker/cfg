# History in cache directory
HISTSIZE=15000
SAVEHIST=10000
HISTFILE=$HOME/.cache/zsh/.zsh_history
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
export LESSHISTFILE=-

# Colors and prompt
autoload -Uz colors && colors
autoload -U vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' unstagedstr ' %F{red}!'
zstyle ':vcs_info:git:*' stagedstr ' %F{green}+'
zstyle ':vcs_info:git:*' formats ' %F{yellow}(%b)%F{yellow}%c%u'
zstyle ':vcs_info:git:*' actionformats ' %F{yellow}(%b)%F{yellow} %F{red}%a %F{red}'
precmd() { vcs_info }
setopt prompt_subst
PROMPT='%(?:%{$fg_bold[magenta]%}❯:%{$fg_bold[magenta]%}❯)'
PROMPT+=' %{$fg[cyan]%}%~%{$reset_color%}${vcs_info_msg_0_}%{$reset_color%} '





# Autosuggestions
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Completion
autoload -U compinit && compinit
source $HOME/.config/zsh/zsh-z/zsh-z.plugin.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh
alias config='/usr/bin/git --git-dir=/Users/nikolamilic/.cfg/ --work-tree=/Users/nikolamilic'

alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/Core"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/Core"
alias l="ls -lh"
alias ll="ls -lha"
