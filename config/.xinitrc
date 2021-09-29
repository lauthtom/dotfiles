
# This for having a wallpaper
nitrogen --restore &

# This will make sure you can restart DWM with shift-mod-q
#while true; do
#	dwm >/dev/null 2>&1
#done

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
while true; do xsetroot -name "$(date)"; sleep 1; done &
dconf write /org/gnome/desktop/interface/cursor-size 16
gsettings set org.gnome.desktop.interface cursor-size 16
xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources
exec dwm

