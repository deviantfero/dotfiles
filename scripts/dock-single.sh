#!/bin/sh
setxkbmap -option caps:escape && \
xrandr --output VIRTUAL1 --off --output DP3 --off --output DP2 --off --output DP1 --off --output HDMI3 --off  --output HDMI2 --off --output HDMI1 --off --output LVDS1 --off --output VGA1 --auto
