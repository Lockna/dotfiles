killall polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

polybar -c ~/.config/polybar/config_new mainbar-i3 &
