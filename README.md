## set Firefox settings 
  * Use recommended performance settings [off]
  * Use hardware acceleration when available [off]
  * layers.acceleration.disabled [true]
  * layers.acceleration.force-enabled [false]

## change mouse cursor and its size 
  * sudo update-alternatives --config x-cursor-theme ( select the right cursor )
  * cd /etc/X11/Xresources/ => change the file to the current cursor 
  * sudo apt-get install dmz-cursor-theme
  * dconf write /org/gnome/desktop/interface/cursor-size 16
  * gsettings set org.gnome.desktop.interface cursor-size 16

## change to the coolest font on the planet
  * go to [this link](https://fonts.google.com/noto/specimen/Noto+Sans+Mono?noto.region=Americas&noto.query=United+States) 
  * Download the Regular 400 style
  * Install it with the font-manager

# How to Fix no Sound 
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
