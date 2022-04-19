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
cp headphoneAudio.sh $HOME/.config/polybar/headphoneAudio.sh 
cp speakerAudio.sh $HOME/.config/polybar/speakerAudio.sh

echo "Installing fonts..."
cp -r fonts/SauceCodePro /usr/share/fonts/truetype/
cp -r fonts/noto /usr/share/fonts/truetype/
cp -r fonts/hack /usr/share/fonts/truetype/

fc-cache -f -v

