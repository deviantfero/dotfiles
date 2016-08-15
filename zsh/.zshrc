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
export EDITOR="vim"

alias ls='ls --color=auto'
alias sf='screenfetch -t'
alias ytmp3='youtube-dl -x --audio-format mp3'
alias grep='grep --color=auto'
alias onsql='sudo systemctl start postgresql.service'
alias offsql='sudo systemctl stop postgresql.service'
alias astral='mpv "http://204.45.73.122:8146/;stream.mp3"'

autoload -Uz compinit
compinit

autoload -Uz colors
colors
# End of lines added by compinstall

PROMPT="%{$fg_bold[green]%}%m%{$reset_color%}%{$fg_bold[blue]%} %~%{$fg_bold[green]%} : %{$reset_color%}%"
#PROMPT="[%{$fg_bod[blue]%} %~ %{$reset_color%}] %{$fg_bold[green]%}>>%{$reset_color%} %"
#RPROMPT="%{$fg_bold[yellow]%} %m %{$reset_color%}"

function precmd() {
	print -Pn "\e]2;%M %~ :\a"
}
function chpwd() {
	print -Pn "\e]2;%M %~ :\a"
}
