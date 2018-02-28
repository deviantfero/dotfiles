#!/bin/bash

REFRESH_RATE=1

show_help() {
	echo $0 "Shows how much charge is remaining before reaching full charge"
	echo "To modify refresh rate use -t [seconds], default is 1"
}

show_remaining() {
	while [[ true ]]; do
		current=$(cat /sys/class/power_supply/BAT0/energy_now);
		full=$(cat /sys/class/power_supply/BAT0/energy_full);
		if [[ "$(($full-$current))" -eq "0" ]]; then
			echo "charge complete!"
			exit 0
		fi
		echo "recharge complete in: " $(($full-$current));
		sleep $REFRESH_RATE
	done
}

while getopts "t:h?" opt; do
	case "$opt" in
		t|\?)
			REFRESH_RATE=$OPTARG
			;;
		h|\?)
			show_help
			exit 0
			;;
		esac
done

show_remaining
