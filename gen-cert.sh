#!/bin/bash

# Author      : BALAJI POTHULA<balaji.pothula@techie.com>,
# Date        : 02 JULY 2017,
# Description : Generating Let's Encrypt SSL Certs using certbot client.

# Generating Diffie-Hellman pem file.
openssl dhparam -out /home/ubuntu/webapp/vashs.in/ssl/dh.pem                   2048
openssl dhparam -out /home/ubuntu/webapp/gmtauto.in/ssl/dh.pem                 2048
openssl dhparam -out /home/ubuntu/webapp/joycatering.in/ssl/dh.pem             2048
openssl dhparam -out /home/ubuntu/webapp/geo.balaji.network/ssl/dh.pem         2048
openssl dhparam -out /home/ubuntu/webapp/2048.balaji.network/ssl/dh.pem        2048
openssl dhparam -out /home/ubuntu/webapp/bingo.balaji.network/ssl/dh.pem       2048
openssl dhparam -out /home/ubuntu/webapp/rubiks.balaji.network/ssl/dh.pem      2048
openssl dhparam -out /home/ubuntu/webapp/bsc.results.balaji.network/ssl/dh.pem 2048

# Generating LetsEncrypt Certs.
certbot certonly --standalone -q -n -d vashs.in             -d www.vashs.in       -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d gmtauto.in           -d www.gmtauto.in     -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d joycatering.in       -d www.joycatering.in -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d geo.balaji.network                         -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d 2048.balaji.network                        -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d bingo.balaji.network                       -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d rubiks.balaji.network                      -m balan.pothula@gmail.com --agree-tos --no-eff-email
certbot certonly --standalone -q -n -d bsc.results.balaji.network                 -m balan.pothula@gmail.com --agree-tos --no-eff-email

# Copying letsencrypt certs into volume.
cp -f /etc/letsencrypt/live/vashs.in/{cert.pem,privkey.pem,chain.pem}                   /home/ubuntu/webapp/vashs.in/ssl
cp -f /etc/letsencrypt/live/gmtauto.in/{cert.pem,privkey.pem,chain.pem}                 /home/ubuntu/webapp/gmtauto.in/ssl
cp -f /etc/letsencrypt/live/joycatering.in/{cert.pem,privkey.pem,chain.pem}             /home/ubuntu/webapp/joycatering.in/ssl
cp -f /etc/letsencrypt/live/geo.balaji.network/{cert.pem,privkey.pem,chain.pem}         /home/ubuntu/webapp/geo.balaji.network/ssl
cp -f /etc/letsencrypt/live/2048.balaji.network/{cert.pem,privkey.pem,chain.pem}        /home/ubuntu/webapp/2048.balaji.network/ssl
cp -f /etc/letsencrypt/live/bingo.balaji.network/{cert.pem,privkey.pem,chain.pem}       /home/ubuntu/webapp/bingo.balaji.network/ssl
cp -f /etc/letsencrypt/live/rubiks.balaji.network/{cert.pem,privkey.pem,chain.pem}      /home/ubuntu/webapp/rubiks.balaji.network/ssl
cp -f /etc/letsencrypt/live/bsc.results.balaji.network/{cert.pem,privkey.pem,chain.pem} /home/ubuntu/webapp/bsc.results.balaji.network/ssl

# Changing Certs Permission to -rw-r--r--.
chmod 644 /home/ubuntu/webapp/vashs.in/ssl/*.pem
chmod 644 /home/ubuntu/webapp/gmtauto.in/ssl/*.pem
chmod 644 /home/ubuntu/webapp/joycatering.in/ssl/*.pem
chmod 644 /home/ubuntu/webapp/geo.balaji.network/ssl/*.pem
chmod 644 /home/ubuntu/webapp/2048.balaji.network/ssl/*.pem
chmod 644 /home/ubuntu/webapp/bingo.balaji.network/ssl/*.pem
chmod 644 /home/ubuntu/webapp/rubiks.balaji.network/ssl/*.pem
chmod 644 /home/ubuntu/webapp/bsc.results.balaji.network/ssl/*.pem

# Creating Symbolic Link.
ln -s -f /etc/letsencrypt/live/vashs.in/cert.pem      /home/ubuntu/webapp/vashs.in/ssl/cert.pem
ln -s -f /etc/letsencrypt/live/vashs.in/privkey.pem   /home/ubuntu/webapp/vashs.in/ssl/privkey.pem
ln -s -f /etc/letsencrypt/live/vashs.in/chain.pem     /home/ubuntu/webapp/vashs.in/ssl/chain.pem
ln -s -f /etc/letsencrypt/live/vashs.in/fullchain.pem /home/ubuntu/webapp/vashs.in/ssl/fullchain.pem

