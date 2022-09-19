#!/bin/bash

FILE_NAME="$1"
TEMPLATE_FILE="/opt/alx/pytemp.py"

cp $TEMPLATE_FILE $FILE_NAME
chmod u+x $FILE_NAME
vi $FILE_NAME
