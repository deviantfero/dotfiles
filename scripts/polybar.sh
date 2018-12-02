#!/bin/sh

# Terminate already running bar instances
killall -q polybar;

# Wait until the processes have been shut down
while pgrep -x polybar; do sleep 0.01; done

# Launch bar1 and bar2
DISPLAY1="$(xrandr -q | grep -E 'eDP-?[0-9]' | cut -d ' ' -f1)"
[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar wpgtk &

DISPLAY2="$(xrandr -q | grep -E 'DP[1-9]-?[0-9] connected' | cut -d ' ' -f1)"
[[ ! -z $DISPLAY2 ]] && MONITOR="$DISPLAY2" polybar wpgtk &

DISPLAY3="$(xrandr -q | grep -E 'VGA-?1 connected' | cut -d ' ' -f1)"
[[ ! -z $DISPLAY3 ]] && MONITOR="$DISPLAY3" polybar wpgtk &
