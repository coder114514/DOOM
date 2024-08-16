sudo -b Xephyr :2 -ac -screen 640x400x8
sleep 1 # hack
DISPLAY=:2
./linux/linuxxdoom -2
