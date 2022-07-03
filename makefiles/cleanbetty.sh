#!/bin/bash

# check if data is piped

if [ "$#" -eq 0 ]; then
	echo -e "Please provide a file to clean.."
	exit 1
fi

DATA_FILE=$1

sed -i 's/[ \t]*$//' "${DATA_FILE}"
