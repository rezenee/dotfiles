nitrogen --restore
pulseaudio &
xbindkeys
xrdb ~/.Xdefaults
xset b 0
setxkbmap dvorak,ru -option grp:win_space_toggle
xinput set-prop 10 "libinput Left Handed Enabled" 1
xmodmap /home/renee/.Xmodmap
exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) dwm
#exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) icewm
