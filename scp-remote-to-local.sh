#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 31 August 2016,
# Description : SCP from Remote Server to Client.

readonly USR=ubuntu
readonly HOST=13.126.42.22 #ec2-13-126-42-22.ap-south-1.compute.amazonaws.com
readonly PORT=22
readonly PEM=webapp.pem

readonly VOLUME=logwebapp.tar.gz
readonly DOCKER=webapp-3.9.docker
readonly LOG=25-08-2018.tar.gz

# Copying file(s) from remote to local.
scp -o CheckHostIP=no -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -i `pwd`/$PEM -P $PORT $USR@$HOST:~/$VOLUME `pwd`

