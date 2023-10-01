HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

znap source eendroroy/alien-minimal
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
znap source zdharma-continuum/fast-syntax-highlighting
znap source chitoku-k/fzf-zsh-completions
#znap source marlonrichert/zsh-autocomplete

#zstyle -e ':autocomplete:list-choices:*' list-lines 'reply=( $(( LINES / 3 )) )'
#zstyle ':autocomplete:history-incremental-search-backward:*' list-lines 8
#zstyle ':autocomplete:history-search-backward:*' list-lines 8

bindkey -M menuselect '\r' .accept-line

function lf() {
	eza -lF --color=always | grep -v /
}

function lh() {
	eza -dl .* --group-directories-first
}

function ll {
	eza -al --group-directories-first
}

function ls() {
	eza -alF --color=always --sort=size | grep -v /
}

function lt() {
	eza -al -sort=modified
}

function lg() {
	eza -l --git-ignore
}

eval "$(zoxide init zsh)"
