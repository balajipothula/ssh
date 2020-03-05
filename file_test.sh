#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 September 2019,
# Description : UNIX Help.

if [ ! -d $HOME/help_unix.sh ]; then
  echo "it is a file"
else
  echo "it is a directory"
fi

if [ -e $HOME/help_unix.sh ]; then
  echo "file exist"
fi

if [ -f $HOME/help_unix.sh ]; then
  echo "file exist and regular file"
fi

if [ -s $HOME/help_unix.sh ]; then
  echo "file exist and not empty"
fi

if [ -r $HOME/help_unix.sh ]; then
  echo "file is readable"
else
  echo "file is not readable"
fi

if [ -w $HOME/help_unix.sh ]; then
  echo "file is writeble"
else
  echo "file is not writeble"
fi

if [ -x $HOME/help_unix.sh ]; then
  echo "file is executable"
else
  echo "file is not executable"
fi
