#!/bin/bash

if [ "$#" -eq 0 ]; then
        echo -e "No arguments given..."
        exit 1
fi

# collect args

for arg in "$@"; do
        while read line; do
                __line="`echo $line | sed 's/\.o/\.c/g' | tr -d '\n' `"
                cp "`find ../ -name $__line | sed -n '1p' `" .
        done < $arg
done
