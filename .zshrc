# Created by newuser for 5.8.1

source "${HOME}/.zgen/zgen.zsh"

HISTFILE=~/.histfile

if ! zgen saved; then
    # Plugins
    zgen load eendroroy/alien-minimal
    zgen load zsh-users/zsh-autosuggestions
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zdharma-continuum/fast-syntax-highlighting
    zgen load ~/repos/zsh-autocomplete
    zgen load chitoku-k/fzf-zsh-completions

    zgen save
fi

alias ld='eza -lD'
alias lf='eza -lF —-color=always | grep -v /'
alias lh='eza -dl .* —-group-directories-first'
alias ll='eza -al —-group-directories-first'
alias ls='eza -alF —-color=always —-sort=size | grep -v /'
alias lt='eza -al —-sort=modified'

eval "$(zoxide init zsh)"

