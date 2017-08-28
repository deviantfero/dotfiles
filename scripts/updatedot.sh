#!/bin/bash

backupdir="/media/Local/dotfiles"

function up_openbox {
	echo "OPENBOX::BACKUP"
 	cp -r ~/.config/openbox/* $backupdir/openbox/
	echo "XRES::BACKUP"
	cp ~/.Xresources $backupdir/Xresources
	echo "TMUX::BACKUP"
	cp ~/.tmux.conf $backupdir/tmux/.tmux.conf
}

function up_vim {
	echo "VIM::BACKUP"
	cp ~/.vim/vimrc $backupdir/vim/
	cp -r ~/.vim/colors $backupdir/vim/
	cp -r ~/.vim/after $backupdir/vim/
	cp -r ~/.vim/plugin $backupdir/vim/
	cp -r ~/.vim/autoload $backupdir/vim/
}

function up_mpd {
	echo "MPDNCMPCPP::BACKUP"
	cp -r ~/.mpd/mpd.conf $backupdir/mpd/
	cp -r ~/.ncmpcpp/config $backupdir/ncmpcpp/
}

function up_zsh {
	echo "ZSH::BACKUP"
	cp ~/.zshrc $backupdir/zsh/
}

function up_tint2 {
	echo "TINT2::BACKUP"
	cp ~/.config/tint2/tint2rc $backupdir/tint2/tint2rc
}

function up_scripts {
	echo "SCRIPTS::BACKUP"
	cp ~/Code/scripts/* $backupdir/scripts/
	echo "please clean up scripts directory"
}

function up_compton {
	echo "COMPTON::BACKUP"
	cp ~/.config/compton.conf $backupdir
}

function up_rofi {
	echo "ROFI::BACKUP"
	cp ~/.config/rofi/config $backupdir
}

up_openbox
up_vim
up_zsh
up_tint2
up_mpd
up_compton
up_scripts
