#!/usr/bin/env bash
##########################################################
#  |  __ \ \    / /  __ \| |        /\   |  _ \ / ____|  #
#  | |  | \ \  / /| |__) | |       /  \  | |_) | (___    #
#  | |  | |\ \/ / |  _  /| |      / /\ \ |  _ < \___ \   #
#  | |__| | \  /  | | \ \| |____ / ____ \| |_) |____) |  #
#  |_____/   \/   |_|  \_\______/_/    \_\____/|_____/   #
##########################################################
# CONFIGURATON - launch.sh                               #               
##########################################################
# SUMMARY      - init file for polybar                   #      
##########################################################
# VERSION      - 1.0.0                                   # 
##########################################################
# DATE         - 03/16/22                                #      
##########################################################
# https://github.com/dvrlabs/bspwm-unified-workspace     # 
##########################################################


# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar mybar -c $HOME/.config/polybar/config.ini &

echo "Bars launched..."
