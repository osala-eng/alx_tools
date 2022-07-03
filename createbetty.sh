#!/bin/bash

# Check if arguments given

if [ "$#" = "0" ]; then
	echo -e "No arguments given.."
	exit 1
fi

ARGUMENT_INPUT=$1
ARGUMENT_BR=" "
TEMPLATE_PATH="/opt/alx"
TEMPLATE_FILE="main"

if [ ! -d "${TEMPLATE_PATH}" ]; then
	echo -e "Sorry template not found.."
	exit 1
fi

# fetch template

cp "${TEMPLATE_PATH}/${TEMPLATE_FILE}.c" "${ARGUMENT_INPUT}"

# Open the created files in vi

vi "${ARGUMENT_INPUT}"
