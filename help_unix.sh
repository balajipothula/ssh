#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 September 2019,
# Description : UNIX Help.

aws s3 cp hi.txt s3://mybucket/helo.txt
aws s3 sync hiwebsite s3://mybucket/helowebsite
aws s3 ls s3://mybucket --recursive
aws s3 cp s3://mybucket/helo.txt .
aws s3 sync s3://mybucket/helowebsite hiwebsite

# logging as a superuser.
sudo -i

# changing the current date.
date +%D -s 2019-09-15

# changing the current time.
# -u -> UTC
date +%T -s 11:15:45 -u

# creating user with default settings.
# -c "SonarQube Server"
# -d /home/sonarqube
# -e 2019-11-05
# -s /bin/bash
useradd sonarqube

# changing password for user.
passwd sonarqube

# deleting user password access.
passwd -d postgres

# deleting user.
userdel postgres

# changing user name.
# note: mv /home/ec2-user /home/sonarqube
usermod -l "sonarqube" ec2-user

# creating user without password.
adduser sonarqube --disabled-password

# 
lslogins --logins=ec2-user --output=LAST-LOGIN --time-format=iso | tail -1


jdbc:postgresql://10.0.0.100/jenkins

