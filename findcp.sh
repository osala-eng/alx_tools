#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo -e "No arguments given..."
	exit 1
fi

# collect args

for arg in "$@"; do
	__line="`echo $arg | sed -e 's/.o/.c/g'`"
	cp "`find ../ -name ${__line} | sed -n '1p'`" .
done

clear && ls
