#!/bin/sh
run() {
  if ! pgrep -f $1 ;
  then
    $@&
  fi 
}
# Wallpaper
run nitrogen --restore &
# set Framerate to 72hz and activate tearfreee opt
run xrandr -r 72 &
run xrandr --output HDMI-A-0 --set TearFree on &
# Polkit
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
# Load picom conf
run picom -b --animations --animation-window-mass 0.5 --animation-for-open-window zoom --animation-stiffness 350 &
# Redshift
run redshift -l -36.820133:-73.044388 -t 6500k:4000k &
# Music (mpd & mpdris2)
run mpd && 
run mpDris2 &
# System tray apps
run nm-applet && 
run blueberry-tray &&
run flameshot &
run volumeicon && 
