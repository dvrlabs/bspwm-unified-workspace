#!/bin/bash

newSink="alsa_output.pci-0000_2b_00.3.analog-stereo"

pactl list short sink-inputs|while read stream; do
    streamId=$(echo $stream|cut '-d ' -f1)
    echo "moving stream $streamId"
    pactl move-sink-input "$streamId" "$newSink"
done

