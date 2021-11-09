# Installing and Configuring i3-gaps on Ubuntu 

## First things, you have to do is
```
sudo apt update
sudo apt upgrade
```

## Enable bitmap fonts
```
sudo rm /etc/fonts/conf.d/70-no-bitmaps.conf
sudo ln -s ../conf.avail/70-force-bitmaps.conf /etc/fonts/conf.d/
sudo dpkg-reconfigure fontconfig-config
sudo dpkg-reconfigure fontconfig
sudo fc-list | grep Fixed | grep 6x13.pcf
```

## Installing some dependencies
```
sudo apt install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev 
libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev 
libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev 
autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev libxcb-xrm-dev
```

## After installing this, do
```
sudo add-apt-repository ppa:regolith-linux/stable
sudo apt-get update
sudo apt install i3-gaps
```

now restart the computer, and select in the login menu, the i3 session

## Installing some more packages, you'll need
```
sudo apt install gcc git vim make xterm feh fonts-font-awesome
```

## Setting up the right output
```
echo pacmd set-default-sink alsa_output.pci-0000_00_1f.3.analog-stereo >> sound.sh 
```
after this, do 
```
chmod +x sound.sh
```

now add in your .bashrc
```
sh /path/to/file/sound.sh
```
