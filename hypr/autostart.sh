#!/bin/sh
run() {
  if ! pgrep -f $1 ;
  then
    $@&
  fi 
}
# Redshift
run gammastep -l -36.820133:-73.044388 -t 6500k:4000k &
# Music (mpd & mpdris2)
run mpd && 
run mpDris2 &
# System tray apps
#run nm-applet && 
#run blueberry-tray &&
#run flameshot &
#run volumeicon && 
