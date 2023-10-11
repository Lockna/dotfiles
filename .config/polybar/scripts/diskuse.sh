partition="/"

color_low="5BE372"
color_medium="FFFF00"
color_high="FF0000"

disk_usage=$(df -h "$partition" | awk 'NR==2 {print $5}' | cut -d '%' -f1)

thresh_low=60
thresh_medium=80

if [ "$disk_usage" -lt "$thresh_low" ];
then
	color="$color_low"
elif [ "$disk_usage" -lt "$thresh_medium" ];
then 
	color="$color_medium"
else
	color="$color_high"
fi

echo "DISK %{F$color}${disk_usage}% of /%{F-}"
