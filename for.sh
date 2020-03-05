#!/bin/bash

# Author      : BALAJI POTHULA <balaji.pothula@techie.com>,
# Date        : 15 September 2019,
# Description : UNIX Help.

readonly name_array=("Ram" "Eve" "Ali")

for name in ${name_array[@]}; do
  echo $name
done
