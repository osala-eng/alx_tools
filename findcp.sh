#!/bin/bash

if [ "$#" -eq 0 ]; then
	echo -e "No arguments given..."
	exit 1
fi


ARG_BR=" "
ARG_LIST=""

for arg in "$@"; do
	cp "`find ../ -name ${arg} | sed -n '1p'`" .
done

clear && ls
