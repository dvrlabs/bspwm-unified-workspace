#!/bin/bash

newSink="alsa_output.usb-Razer_Razer_USB_Audio_Controller_000000000000000000000000-00.stereo-chat"

pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done


