#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <sinkId/sinkName>" >&2
    echo "Valid sinks:" >&2
    pactl list short sinks >&2
    exit 1
fi

newSink="$1"

pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done

#headset
#alsa_output.usb-Razer_Razer_USB_Audio_Controller_000000000000000000000000-00.stereo-chat

#speaker
#alsa_output.pci-0000_2b_00.3.analog-stereo
