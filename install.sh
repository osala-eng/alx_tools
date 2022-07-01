#!/bin/bash
# Installer

if [ "(id -u)" != "0" ]; then
	echo "You are not root, terminating program.."
	exit 1
fi

GCC_TOOL="agcc"

APP_PATH="/opt/alx"
BIN_PATH="/usr/local/bin"

echo -e "Installing binaries.."

mkdir -p "${APP_PATH}"

cp "${GCC_TOOL}.sh" "${APP_PATH}/${GCC_TOOL}"

chmod a+x "${APP_PATH}/${GCC_TOOL}"

ln -s "${APP_PATH}/${GCC_TOOL}" "${BIN_PATH}/${GCC_TOOL}"

echo -e "All done enjoy :)"
