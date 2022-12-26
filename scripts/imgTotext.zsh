#!/bin/zsh

touch ~/f.png ~/output.txt

gnome-screenshot --file=f.png -a
tesseract f.png output -l eng
cat output.txt | wl-copy

rm ~/f.png ~/output.txt

