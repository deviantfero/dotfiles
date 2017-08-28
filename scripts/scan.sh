#!/bin/bash

cont=1
opt=true
char='n'

while [[ $opt == true ]]; do
	echo ":: scanning out"$cont
	scanimage --device "pixma:04A91780_A05AA1" --format=jpeg > out$cont.jpg
	echo -n "continue? [Y/n]"
	read char
	cont=$(($cont+1))
	if [[ "$char" == "n" || "$char" == "N" ]]; then
		opt=false
	fi
done
