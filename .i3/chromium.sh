#!/bin/bash

wincount="$(i3-msg -t get_tree | grep -c Chromium)"

if [ "$wincount" -gt "0" ]; then
	i3-msg "[class=Chromium] focus"
else
	i3-msg "exec chromium"
fi
