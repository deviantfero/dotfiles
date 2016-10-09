# Created by newuser for 5.0.7

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall

zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '/home/fernando/.zshrc'
export MPD_HOST=/home/USER/.mpd/socket 
export KEYTIMEOUT=1

alias ls='ls --color=auto'
alias sf='screenfetch -t'
alias ytmp3='youtube-dl -x --audio-format mp3'
alias grep='grep --color=auto'
alias onsql='sudo systemctl start postgresql.service'
alias offsql='sudo systemctl stop postgresql.service'
alias astral='mpv "http://usa8-vn.mixstream.net:8146/;stream.mp3"'

bindkey '^R' history-incremental-search-backward

autoload -Uz compinit
compinit

autoload -Uz colors
colors
# End of lines added by compinstall

PROMPT="%{$fg_bold[magenta]%}λ %{$reset_color%}%{$fg_bold[green]%}%~%{$fg_bold[magenta]%} >>%{$reset_color%} %"
#PROMPT="%{$bg[magenta]%}%{$fg_bold[0]%} λ %{$reset_color%}%{$bg[green]%}%{$fg_bold[0]%} %~ %{$fg[0]%}%{$bg[magenta]%} >> %{$reset_color%b%} %"
#PROMPT="[%{$fg_bod[blue]%} %~ %{$reset_color%}] %{$fg_bold[green]%}>>%{$reset_color%} %"
RPROMPT=""

function precmd() {
	print -Pn "\e]2;%M %~\a"
}
function chpwd() {
	print -Pn "\e]2;%M %~\a"
}

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[red]%}[% NORMAL]% %{$reset_color%}"
    RPROMPT="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
