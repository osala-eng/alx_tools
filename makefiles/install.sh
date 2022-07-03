#!/bin/bash

# Installer

if [ "$(id -u)" != "0" ]; then
	echo "You are not root, terminating program.."
	exit 1
fi

GCC_TOOL="agcc"
CLEAN_BETTY="cleanbetty"
CREATE_BETTY="createbetty"
SOURCE_DIR="makefiles"
TEMPLATE_FILE="template"
DATA_FILE="main"

APP_PATH="/opt/alx"
BIN_PATH="/usr/local/bin"

echo -e "Installing binaries.."

mkdir -p "${APP_PATH}"


cp "${GCC_TOOL}.sh" "${APP_PATH}/${GCC_TOOL}"
cp "${CLEAN_BETTY}.sh" "${APP_PATH}/${CLEAN_BETTY}"
cp "${CREATE_BETTY}.sh" "${APP_PATH}/${CREATE_BETTY}"
cp "${SOURCE_DIR}/${TEMPLATE_FILE}.c" "${APP_PATH}/${DATA_FILE}.c"

chmod a+x "${APP_PATH}/${GCC_TOOL}"
chmod a+x "${APP_PATH}/${CLEAN_BETTY}"
chmod a+x "${APP_PATH}/${CREATE_BETTY}"

ln -s -f "${APP_PATH}/${GCC_TOOL}" "${BIN_PATH}/${GCC_TOOL}"
ln -s -f "${APP_PATH}/${CLEAN_BETTY}" "${BIN_PATH}/${CLEAN_BETTY}"
ln -s -f "${APP_PATH}/${CREATE_BETTY}" "${BIN_PATH}/${CREATE_BETTY}"

echo -e "All done enjoy :)"
