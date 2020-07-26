#!/bin/bash

# options to be displayed
option0="screen"
option1="area"
option2="ocr area"
option3="window"

# options to be displyed
options="$option0\n$option1\n$option2\n$option3"

selected="$(echo -e "$options" | rofi -lines 4 -width 10 -dmenu -p "scrot")"
case $selected in
    $option0)
        cd ~/Images/Screenshots/ && sleep 1 && scrot;;
    $option1)
        cd ~/Images/Screenshots/ && scrot -s;;
    $option2)
        scrot -s -e 'python ~/dev/scripts/ocr2clipboard.py $f';;
    $option3)
        cd ~/Images/Screenshots/ && sleep 1 && scrot -u;;
esac
