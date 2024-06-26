#!/bin/bash
msg=$(echo 󰕾 $(amixer get Master | grep -o -E '([0-9]*%|\[(off|on)\])' | sort | uniq))
notify-send "$msg"
echo $msg

