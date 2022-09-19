#!/bin/bash

# Installer

if [ "$(id -u)" != "0" ]; then
	echo "You are not root, terminating program.."
	exit 1
fi

PY_TOOL="py"
PY_EX_TOOL="pystart"
TEMPLATE_FILE="template"
SOURCE_DIR="makefiles"
DATA_FILE="pytemp"

APP_PATH="/opt/alx"
BIN_PATH="/usr/local/bin"

echo -e "Installing binaries.."

mkdir -p "${APP_PATH}"


cp "${PY_TOOL}.sh" "${APP_PATH}/${PY_TOOL}"
cp "${SOURCE_DIR}/${TEMPLATE_FILE}.py" "${APP_PATH}/${DATA_FILE}.py"

chmod a+x "${APP_PATH}/${PY_TOOL}"

ln -s -f "${APP_PATH}/${PY_TOOL}" "${BIN_PATH}/${PY_EX_TOOL}"

echo -e "All done enjoy :)"
