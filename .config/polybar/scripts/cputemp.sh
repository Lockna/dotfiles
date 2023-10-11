color_low="5BE372"
color_medium="FFFF00"
color_high="FF0000"

temperature=$(sysctl -n dev.amdtemp.0.core0.sensor0)

temperature_number=${temperature%.?C}

if [ "$temperature_number" -lt 55 ];
then
	color="$color_low"
elif [ "$temperature_number" -lt 75 ];
then
	color="$color_medium"
else
	color="$color_high"
fi

echo "TEMP %{F$color}${temperature}° %{F-}"
