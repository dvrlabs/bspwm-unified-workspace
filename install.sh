#!/bin/sh

cp bspwmrc $HOME/.config/bspwm/bspwmrc
cp sxhkdrc $HOME/.config/sxhkd/sxhkdrc
cp config.ini $HOME/.config/polybar/config.ini
cp launch.sh $HOME/.config/polybar/launch.sh
cp changeAudio.sh $HOME/.config/polybar/changeAudio.sh

sudo apt install bspwm sxhkd polybar picom nitrogen arandr autorandr xscreensaver
