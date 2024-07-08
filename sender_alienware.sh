#!/bin/bash

# Start and stream camera
/usr/local/driveworks/bin/sample_camera_gmsl --write-file="/dev/stdout" | \
    gst-launch-1.0 -e fdsrc ! h264parse ! avdec_h264 ! videoconvert ! \
    videorate ! video/x-raw,framerate=30/1 ! x264enc tune=zerolatency \
    bitrate=3000 speed-preset=ultrafast ! video/x-h264,profile=baseline ! \
    rtph264pay ! udpsink host=192.168.1.204 port=5000
