# How to Fix no Sound on Ubuntu Server
* speaker-test -t wav -c 6 ( test the speaker if they work )
* pavucontrol ( opens a gui to control input and output devices )

  1. To set the right output  
    * pact list short sinks ( list all available devices )
    * pacmd set-default-sink 1 ( set the right output
  
  2. set it to default 
    * cd /etc/pulse/
    * sudo vim default.pa 
    * scroll to the bottom, where two lines started with -set will be commented out. Now uncomment these lines
    and replace the words input and output with the number of the right devices ( this will set it now to
    default )
