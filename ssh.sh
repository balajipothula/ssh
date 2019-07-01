#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 31 August 2016,
# Description : Remote Server SSH Login.

# ssh-keygen -q -N '' -m pem -t rsa -b 4096 -C balaji.pothula@techie.com -f `pwd`/webapp && mv `pwd`/webapp `pwd`/webapp.pem && chmod 400 `pwd`/webapp.pem

readonly USR=ubuntu
readonly HOST=1.2.3.4 #ec2-1-2-3-4.ap-south-1.compute.amazonaws.com
readonly PORT=22
readonly PEM=webapp.pem

ssh -o ServerAliveInterval=60 -o ServerAliveCountMax=30 -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i `pwd`/$PEM $USR@$HOST -p $PORT
