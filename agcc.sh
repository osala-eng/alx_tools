#!/bin/bash
# Simple bash programme with compiler options

if [ "$#" = "0" ]; then
	echo "No arguments passed, stopping program.."
	exit 1
fi

ARGUMENT_TEMPLATE="gcc -Wall -Werror -Wextra -pedantic -std=gnu89"
ARGUMENT_LIST=""
ARGUMENT_BR=" "

for arg in "$@"; do
	ARGUMENT_LIST=${ARGUMENT_LIST}${ARGUMENT_BR}"${arg}"
done

${ARGUMENT_TEMPLATE} ${ARGUMENT_LIST}
