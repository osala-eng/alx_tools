#!/bin/bash

# check if data is piped

if [ "$#" -eq 0 ]; then
	echo -e "Please provide a file to clean.."
	exit 1
fi

sed -i 's/[ \t]*$//' $1

echo -e "Removed all trailing whitespaces.."
