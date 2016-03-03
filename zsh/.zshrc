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

autoload -Uz compinit
compinit

autoload -Uz colors
colors

PROMPT="%{$fg_bold[blue]%}%m%{$reset_color%}%{$fg[green]%} %~%{$fg_bold[blue]%} : %{$reset_color%}%"
#PROMPT="[%{$fg_bod[blue]%} %~ %{$reset_color%}] %{$fg_bold[green]%}>>%{$reset_color%} %"
#RPROMPT="%{$fg_bold[yellow]%} %m %{$reset_color%}"

function precmd() {
	print -Pn "\e]2;%M %~ :\a"
}
function chpwd() {
	print -Pn "\e]2;%M %~ :\a"
}

# End of lines added by compinstall
