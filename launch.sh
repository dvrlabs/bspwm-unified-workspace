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
# GITHUB       -                                         # 
##########################################################


# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# start polybar
polybar mybar -c $HOME/.config/polybar/config.ini &

#lower polybar on z axis
xdo lower -N "Polybar"

echo "Bars launched..."
