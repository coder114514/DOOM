#!/bin/sh

# sample script for starting linux doom

DISPLAY_NO=2
DISPLAY_MODE=640x400x8
DELAY=1 # hack
DOOM=./linux/linuxxdoom

sudo -b Xephyr :$DISPLAY_NO -ac -screen $DISPLAY_MODE
sleep $DELAY # hack
printf '\n'  # hack
DISPLAY=:$DISPLAY_NO $DOOM -$DISPLAY_NO
printf '\n'  # hack
sleep $DELAY # hack
