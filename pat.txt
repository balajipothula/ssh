#!/bin/bash

# note: run this shell file as shown below
# ./ls_dir.sh
# or
# bash ls_dir.sh

# setting rockspec file path.
readonly ROCKSPEC_FILE="/kong-plugin/factset-plugins-0.3.0-0.rockspec"
readonly PATTREN='\["'

while read -r line ; do

  # spliting line with delimiter "=" and selecting index "2" value.
  line=$(echo $line | cut -d '=' -f 2)

  # selecting string between quotes.
  line=$(sed -n 's/^.*"\(.*\)".*$/\1/ p' <<< ${line})

  # trimming string.
  line=$(echo -e $line | awk '{$1=$1};1')

  echo $line

done < <(grep $PATTREN $ROCKSPEC_FILE)
