#!/bin/bash
read file
if [[ -e $file ]];then
find $file . -type f -printf '%s\n' | awk '{s+=$0}
END {printf "Count: %u\nAverage size: %.2f\n", NR, s/NR}'
fi

