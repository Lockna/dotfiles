color_low="5BE372"
color_medium="FFFF00"
color_high="FF0000"

usage=$(python3 ~/.config/polybar/scripts/cpuuse.py)

int_usage=${usage%.?}

if [ "$int_usage" -gt 66 ];
then
	color="$color_high"
elif [ "$int_usage" -gt 33 ];
then
	color="$color_medium"
else
	color="$color_low"
fi

echo "CPU %{F$color}${usage}% %{F-}"