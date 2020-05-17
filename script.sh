#!/bin/bash

dirs=($(find / -iname $1 -type d 2>/dev/null))
if [ ${#dirs[@]} -eq 1 ]
then 
    cd ${dirs[0]}
else 
    i=1
    for dir in "${dirs[@]}"
        do
            if [ $i -gt 9 ]
            then 
                echo $i. $dir
            else 
                echo "$i.  $dir"
            fi
            ((i++))
        done
    read input
    ((input--))
    cd ${dirs[$input]}
fi



