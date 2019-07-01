#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 31 August 2016,
# Description : SCP from Client to Remote Server.

readonly USR=ubuntu
readonly HOST=1.2.3.4 #ec2-1-2-3-4.ap-south-1.compute.amazonaws.com
readonly PORT=22
readonly PEM=webapp.pem

readonly VOLUME=webapp.tar.gz
readonly DOCKER=webapp.docker
readonly LOG=log.tar.gz

# Copying file(s) from local to remote.
scp -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i `pwd`/$PEM -P $PORT `pwd`/favicon.ico $USR@$HOST:~
