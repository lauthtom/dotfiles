# First steps after installing Ubuntu and setting dwm up
  * install a terminal emulator like xterm ( enable bitmap font on ubuntu --> Fixed Font )
  * set github config  (~/.git-credentials - https://username:password@github.com )

## autologin 
  * sudo systemctl edit getty@tty1.service
  * sudo vim /etc/systemd/system/getty@tty1.service.d/override.conf and replace myusername with the real name 


## edit .xinitrc
  * [[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
  * while true; do xsetroot -name "$(date)"; sleep 1; done & 
  * dconf write /org/gnome/desktop/interface/cursor-size 16
  * gsettings set org.gnome.desktop.interface cursor-size 16
  * xmodmap ~/.Xmodmap
  * xrdb -merge ~/.Xresources
  * exec dwm

## change mouse cursor and its size 
  * sudo update-alternatives --config x-cursor-theme ( select the right cursor )
  * cd /etc/X11/Xresources/ => change the file to the current cursor 
  * sudo apt-get install dmz-cursor-theme
  * dconf write /org/gnome/desktop/interface/cursor-size 16
  * gsettings set org.gnome.desktop.interface cursor-size 16

## change the font in xterm
  * go to [this link](https://fonts.google.com/noto/specimen/Noto+Sans+Mono?noto.region=Americas&noto.query=United+States) 
  * Download the Regular 400 style
  * Install it with the font-manager


# How to Fix no Sound on Ubuntu 
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
