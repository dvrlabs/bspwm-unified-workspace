#!/bin/sh

echo "Pulling configs from system into local git repo."

cp $HOME/.config/bspwm/bspwmrc bspwmrc
cp $HOME/.config/sxhkd/sxhkdrc sxhkdrc
cp $HOME/.config/polybar/config.ini config.ini
cp $HOME/.config/polybar/launch.sh launch.sh
cp $HOME/.config/polybar/changeAudio.sh changeAudio.sh
cp $HOME/.config/polybar/headphoneAudio.sh headphoneAudio.sh
cp $HOME/.config/polybar/speakerAudio.sh speakerAudio.sh
cp $HOME/.config/polybar/screensaver.sh screensaver.sh



