#!/bin/bash
myarr=($(who |grep tty | awk '{print $1}'))
for i in "${myarr[@]}"
do
   :

  export DISPLAY=:0;
  export XAUTHORITY=~otheruser/.Xauthority;

su $i -c 'zenity --info --text="Hello!!! \n It is test message for all user this pc!" --title="Admin Message" --ok-label="Close" --no-wrap --display=:0' &

done
