#!/bin/bash
while [ $# -gt 0 ]; do
    case $1 in
        -d|--depth) depth="$2"; shift; shift;;
        -g|--global) global=true; shift;;
        -*) echo "Unknown flag: $1"; return;; 
        *) query=$1; shift;;
    esac
done

if [ -z ${global+x} ]
then 
      start=$HOME
else 
      start="/"
fi

if [ -z ${depth+x} ]
then 
      dirs=($(find $start -iname $query -type d 2>/dev/null))
else  
      dirs=($(find $start -iname $query -type d -maxdepth $depth 2>/dev/null))
fi

if [[ ${#dirs[@]} -eq 0 ]]
then 
      echo "No directories found"
elif [[ ${#dirs[@]} -eq 1 ]]
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
    read -p "Enter input: " input
    ((input--))
    cd ${dirs[$input]}
fitree
unset depth
unset global
unset query
unset start
unset input