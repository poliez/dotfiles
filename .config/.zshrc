# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/poliez/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install

(cat ~/.cache/wal/sequences &)

theme agnoster

eval $(thefuck --alias)

# To manage dotfiles easily
alias config='git --git-dir=$HOME/.config/ --work-tree=$HOME'

