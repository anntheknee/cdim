#!/bin/bash
dirs=$(find /home -type d | grep "$1$")
i=1
for OUTPUT in $dirs
do
    echo $i.")" $OUTPUT
    i=$((i + 1))
done

read input
set -- $dirs

cd ${!input}
