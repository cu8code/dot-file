#!/bin/bash
nitrogen --restore
nm-applet & disown nm-applet
dunst & disown dunst
blueman-applet & disown blueman-applet

setxkbmap -model pc104 -layout us,us -variant ,dvorak -option grp:win_space_toggle
setxkbmap -option caps:escape

