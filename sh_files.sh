#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 18 December 2019,
# Description : UNIX Help.

# enabling shell option nullglob.
# if no files found then it is a null string.
shopt -s nullglob

<<COMMENT
readonly sh_files=$(ls *.sh)
for sh_file in ${sh_files[@]}; do
  echo $sh_file
done
COMMENT

for sh_file in $HOME/*.sh; do
  echo $sh_file
  echo $(basename $sh_file)
done
