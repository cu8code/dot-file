#!/bin/zsh

gnome-screenshot --file=f.png -a
tesseract f.png output -l eng
cat output.txt | wl-copy

