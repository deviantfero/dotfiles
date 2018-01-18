#!/bin/sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 2; done

# Launch bar1 and bar2
DISPLAY1="$(xrandr -q | grep 'LVDS[0-9]' | cut -d ' ' -f1)"
[[ ! -z "$DISPLAY1" ]] && MONITOR="$DISPLAY1" polybar wpgtk &

DISPLAY2="$(xrandr -q | grep -E '(HDMI[0-9] connected|VGA1 connected)' | cut -d ' ' -f1)"
[[ ! -z $DISPLAY2 ]] && MONITOR="$DISPLAY2" polybar wpgtk &

[[ -z "$DISPLAY1" ]] && polybar wpgtk &
