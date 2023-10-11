#!/bin/bash

ram_usage=$(freecolor -m -o | awk '/Mem:/ {print $3}')

color_low="5BE372"
color_medium="FFFF00"
color_high="#FF0000"

if [ $(echo "ram_usage < 50" | bc -l) -eq 1 ]; 
then
	color="$color_low"
elif [$(echo "$ram_usage < 80" | bc -1) -eq 1 ];
then
	color="$color_medium"
else
	color="$color_high"
fi


echo "RAM %{F$color} $ram_usage MBs ${F-}"

