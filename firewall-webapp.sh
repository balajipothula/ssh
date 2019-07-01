#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 06 July 2017,
# Description : Setting firewall.

# accepting incoming traffic.
sudo iptables -P INPUT ACCEPT

# flushing all rules.
sudo iptables -F

# tracking connection.
# packets relationship to previous connections.
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Accept SSH, HTTP and HTTPS connections from any IP.
sudo iptables -A INPUT -m state --state NEW -p tcp --dport  22 -j ACCEPT
sudo iptables -A INPUT -m state --state NEW -p tcp --dport  80 -j ACCEPT
sudo iptables -A INPUT -m state --state NEW -p tcp --dport 443 -j ACCEPT

# loopback device.
sudo iptables -I INPUT 1 -i lo -j ACCEPT

# accepting out going traffic. 
sudo iptables -P OUTPUT ACCEPT

