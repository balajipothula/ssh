#!/bin/bash

# note: run this shell file as shown below
# ./ls_dir.sh
# or
# bash ls_dir.sh

# setting rockspec file path.
readonly ROCKSPEC_FILE="/kong-plugin/factset-plugins-0.3.0-0.rockspec"
readonly PATTREN='\["'

while read -r line ; do
  output=$(echo $line | cut -d '=' -f 2)
  file=$(sed -n 's/^.*"\(.*\)".*$/\1/ p' <<< ${output})
  echo $file
done < <(grep $PATTREN $ROCKSPEC_FILE)
