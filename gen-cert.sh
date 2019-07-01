#!/bin/bash

# Author      : BALAJI POTHULA<balaji.pothula@techie.com>,
# Date        : 02 JULY 2017,
# Description : Generating Let's Encrypt SSL Certs using certbot client.

# Generating Diffie-Hellman pem file.
openssl dhparam -out /home/ubuntu/webapp/balaji.network/ssl/dh.pem 2048

# Generating LetsEncrypt Certs.
certbot certonly --standalone -q -n -d balaji.network -d www.balaji.network -m balan.pothula@gmail.com --agree-tos --no-eff-email

# Copying letsencrypt certs into volume.
cp -f /etc/letsencrypt/live/balaji.network/{cert.pem,privkey.pem,chain.pem} /home/ubuntu/webapp/balaji.network/ssl

# Changing Certs Permission to -rw-r--r--.
chmod 644 /home/ubuntu/webapp/balaji.network/ssl/*.pem

# Creating Symbolic Link.
ln -s -f /etc/letsencrypt/live/balaji.network/cert.pem      /home/ubuntu/webapp/balaji.network/ssl/cert.pem
ln -s -f /etc/letsencrypt/live/balaji.network/privkey.pem   /home/ubuntu/webapp/balaji.network/ssl/privkey.pem
ln -s -f /etc/letsencrypt/live/balaji.network/chain.pem     /home/ubuntu/webapp/balaji.network/ssl/chain.pem
ln -s -f /etc/letsencrypt/live/balaji.network/fullchain.pem /home/ubuntu/webapp/balaji.network/ssl/fullchain.pem
