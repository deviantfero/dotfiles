#!/bin/sh
setxkbmap -option caps:escape && \
xrandr --output VGA-1 --mode 1920x1200 --pos 1366x0 --rotate normal --output LVDS-1 --mode 1366x768 --pos 0x432 --rotate normal --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --off --output DP-3 --off --output DP-2 --off --output DP-1 --off
