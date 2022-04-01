#!/bin/sh

echo "Installing programs..."
sudo apt install bspwm sxhkd polybar picom nitrogen arandr autorandr xscreensaver

echo "Making directories..."
mkdir -p $HOME/.config/bspwm
mkdir -p $HOME/.config/sxhkd
mkdir -p $HOME/.config/polybar

echo "Copying configs..."
cp bspwmrc $HOME/.config/bspwm/bspwmrc
cp sxhkdrc $HOME/.config/sxhkd/sxhkdrc
cp config.ini $HOME/.config/polybar/config.ini
cp launch.sh $HOME/.config/polybar/launch.sh
cp changeAudio.sh $HOME/.config/polybar/changeAudio.sh


echo "Installing fonts..."
cp -r SauceCodePro /usr/share/fonts/truetype/
cp -r noto /usr/share/fonts/truetype/
fc-cache -f -v

