#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 September 2019,
# Description : UNIX Help.

# nohup $HOME/tomcat/bin/startup.sh > $HOME/tomcat/logs/tomcat.log 2>&1 &
 
ping -c 1 balaji.network > /dev/null 2>&1 && echo "host reachable" || echo "host not reachable"

readonly HOST="google.com"
ping -c 1 $HOST
if [ $? -eq 0 ]; then # or # if [ "$?" -eq "0" ]; then
  echo "$HOST is up"
  exit 0
else
  echo "$HOST is down"
  exit 1
fi
