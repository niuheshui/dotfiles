#!/bin/bash

msg=$(python3 -c "print(f'󰖨 {int($(brightnessctl g) / $(brightnessctl m) * 100)}')")
notify-send "$msg"
echo $msg
