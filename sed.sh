#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 December 2019,
# Description : sed Help.

dirs=$(ls /home/ubuntu)

for dir in $dirs; do
  files=$(find "/home/home/$dir" -name "hi*")
  for file in $files; do
    coll=$(basename $file)
    coll=$(echo $coll | sed -e "s/.xml//g")
    coll=$(echo $coll | sed -e "s/.json//g")
    coll=$(echo $coll | sed -e "s/.txt//g")
    echo $coll
  done
done



find /home/ubuntu/ -type f -name hi* | sed -e "s/.json//g" | sed -e "s/.xml//g

cat /etc/passwd | sed '1d' | more

cat /etc/passwd | sed '1, 5d' | more

cat /etc/passwd | sed -n '1,3p'

cat /etc/passwd | set '1,3p'

cat /etc/passwd | sed 's/root/ubuntu'

cat /etc/passwd | sed 's/root/ubuntu/g'

cat /etc/passwd | sed 's:/root:/home/ubuntu:g'

cat /etc/passwd | sed '1,5s/sh/quiet/g'

cat /etc/passwd | sed -n '/root/p'

cat /etc/passwd | sed '/^daemon/d'

cat /etc/passwd | sed '/sh$/d'

cat /etc/syslog.conf | sed -n '/^[[:alpha:]]/p'

sed -e 's/^[[:digit:]][[:digit:]][[:digit:]]/(&)/g' phone.txt

sed -e 's/^[[:digit:]]\{3\}/(&)/g' -e 's/)[[:digit:]]\{3\}/&-/g' phone.txt

cat phone.txt | sed 's/\(.*)\)\(.*-\)\(.*$\)/Αrea \ code: \1 Second: \2 Third: \3/'
