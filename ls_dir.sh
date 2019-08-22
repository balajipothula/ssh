#!/bin/bash

# run ./ls_dir.sh or bash ls_dir.sh only not sh ls_dir.sh

dirs=$(ls -l --time-style='long-iso' $HOME | egrep '^d' | awk '{print $8}')

for dir in $dirs; do
  echo $dir
done


dir_array=(`ls`)

dir_array_size=${#dir_array[*]}

i=0
while [ $i -lt $dir_array_size ]; do
  if [ -d "${dir_array[$i]}" ]; then
    echo "${dir_array[$i]}"
  fi
  let i++
done

#!/bin/bash

Dockerfile="$HOME/Dockerfile"
while IFS= read -r line; do
  echo "$line"
done < $Dockerfile


arr=()
arr+=('a')
arr+=('b')
arr+=('c')

SEARCH_STRING='b'

if [[ " ${arr[*]} " == *"$SEARCH_STRING"* ]];
then
    echo "YES, your arr contains $SEARCH_STRING"
else
    echo "NO, your arr does not contain $SEARCH_STRING"
fi


readonly ROCKSPEC_FILE="/kong-plugin/factset-plugins-0.3.0-0.rockspec"
readonly PATTREN='\["'

while read -r line ; do
  output=$(echo $line | cut -d '=' -f 2)
  echo $output
done < <(grep $PATTREN $ROCKSPEC_FILE)










