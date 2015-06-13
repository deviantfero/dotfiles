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

PROMPT="%{$fg_bold[blue]%}%n%{$reset_color%}%{$fg_bold[white]%} %~%{$reset_color%} > %"

# End of lines added by compinstall
