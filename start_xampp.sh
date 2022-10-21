#!/bin/sh

if [ `whoami` != root ]; then
echo "Run the script as an root user using sudo or su -"
exit
fi

echo "################  S T A R T    O R    S T O P     X A M P P  ################"

echo "Do you want to Start or Stop the server[1/2] 1 for start 2 for stop" : 
read val


case $val in
1)sudo /opt/lampp/lampp start 
  echo "Server up and running good check on http://localhost";;
2)sudo /opt/lampp/lampp stop 
 echo "server stoped succesfully"
 exit;;
esac
