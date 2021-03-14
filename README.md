# First steps after installing Ubuntu Server
  * install a terminal emulator like xterm ( enable bitmap font on ubuntu --> Fixed Font )
  * sudo apt install firefox & ffmpeg && snap && code -classic && thunar && spotify && obs && draw.io 
  * set github config  (~/.git-credentials - https://username:password@github.com )

## autologin 
  * sudo systemctl edit getty@tty1.service
  * sudo vim /etc/systemd/system/getty@tty1.service.d/override.conf and replace myusername with the real name 


## edit .xinitrc
  * [[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
  * while true; do xsetroot -name "$(date)"; sleep 1; done & 
  * dconf write /org/gnome/desktop/interface/cursor-size 16
  * gsettings set org.gnome.desktop.interface cursor-size 16
  * xrdb -merge ~/.Xresources
  * exec dwm

## change mouse cursor and its size 
  * sudo update-alternatives --config x-cursor-theme ( select the right cursor )
  * cd /etc/X11/Xresources/ => change the file to the current cursor 
  * sudo apt-get install dmz-cursor-theme
  * dconf write /org/gnome/desktop/interface/cursor-size 16
  * gsettings set org.gnome.desktop.interface cursor-size 16


# How to Fix no Sound on Ubuntu Server
  * speaker-test -t wav -c 6 ( test the speaker if they work )
  * pavucontrol ( opens a gui to control input and output devices )

## To set the right output  
  * pactl list short sinks ( list all available devices )
  * pacmd set-default-sink 1 ( set the right output

## Set it to default 
  * cd /etc/pulse/
  * sudo vim default.pa 
  * scroll to the bottom, where two lines started with -set will be commented out. Now uncomment these lines
    and replace the words **input** and **output** with the number of the right devices ( this will set it now to
    default )
