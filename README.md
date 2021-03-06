# bspwm-unified-workspace

Configuration files for a traditional unified workspace in bspwm. 

## Moving on,
As of today, May 19th 2022, I will no longer be maintaining this repo
My wish is that this is useful to someone in the future who is looking to create a 
multi-monitor desktop with bspwm but want's a similar workspace style similar to how Pop OS currently is.

I'll be trying out having seperate workspaces for each monitor. It seemed too complicated and counter-intuitive to begin with, but perhaps will be more powerful, and pragmatic. Similar to how using a CLI feels at first versus a GUI.

## Installation

### Ubuntu 22.04 "Jammy Jellyfish"
 
Simply run the ./install.sh script and install-extras.sh script after cloning the repo.

```
sudo apt install bspwm sxhkd polybar picom nitrogen arandr autorandr xscreensaver gucharmap
```

Recommend downloading ulauncher.deb instead of adding the PPA. 
Up to you.

[Ulauncher](https://ulauncher.io/#Download)

```
sudo apt install ./ulauncher_x.y.z_all.deb
```

##### First time setup

Run ```nitrogen ~/Pictures/wallpapers``` **assuming that is a directory containing papes on your system**
Setup wallpapers fo the first time.

Configure xscreensaver to your liking using ```xscreensaver-demo``` 

Conigure monitors to your liking using arandr. Afterwards, save that config
by doing ```autorandr --save bspwm```

Download and copy the configs here into your .config directory.

Modify sxhkdrc to open a terminal of your choosing (alacritty by default, installed via cargo on ubuntu...)

```
cp bspwmrc $HOME/.config/bspwm/bspwmrc
cp sxhkdrc $HOME/.config/sxhkd/sxhkdrc
cp config.ini $HOME/.config/polybar/config.ini
cp launch.sh $HOME/.config/polybar/launch.sh
```

#### Fonts

Fonts required are 
    - Noto Sans 
    - SauceCodePro Nerd Font Mono 

Noto sans included by default with KDE plasma. You can probably find it easily by googling it.
Need the "Complete" patched version of SauceCodePro

[SauceCodePro](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro/Regular/complete)

## Most important part

To cycle all monitors at once, you need the following bspc command,
recommended by the BSPWM dev himself.

```
cycle_dir={prev,next}; \
    bspc desktop "$\{cycle_dir\}.local" -f; \
    for mon_id in $(bspc query -M -m '.!focused'); do \
        bspc desktop "$\{mon_id\}:focused#$\{cycle_dir\}.local" -a; \
    done
```

[Issue 564](https://github.com/baskerville/bspwm/issues/564)

## Inspired by the tiling scripts krohnkite/bismuth in KDE

I essenially wanted most of the same functionality as krohnkite/bismuth, but in an actual standalone WM.
After trying i3-gaps, i was very disappointed. 

i3 and many other window managers do not offer the traditional Desktop Environment's way of handling workspaces/desktops.
Instead of having a unified workspace, each monitor has it's own workspaces.

bspwm-unified-workspace goal is to have configs for "one workspace across all monitors". You can have more than one, or four, workspaces that are shared on all monitors.
