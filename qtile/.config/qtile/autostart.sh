#!/bin/bash
nitrogen --restore
nm-applet & disown nm-applet
dunst & disown dunst
blueman-applet & disown blueman-applet
setxkbmap -option caps:escape
