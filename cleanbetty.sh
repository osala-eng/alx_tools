#!/bin/bash

# check if data is piped

if [ "$#" -eq 0 ]; then
	echo -e "Please provide a file to clean.."
	exit 1
fi

# Remove trailing whitespace

sed -i 's/[ \t]*$//' $1

# check for ( * ) and replace with (*) 

sed -i 's/([[:blank:]]/(/g' $1

sed -i 's/[[:blank:]])/)/g' $1


# remove space after a function name

# sed -i 's/[[:blank:]](/(/g' $1

# check for space before conditions if( to if (

sed -i 's/if(/if (/g' $1

sed -i 's/for(/for (/g' $1

sed -i 's/while(/while (/g' $1

sed -i 's/ \+ /\t/g' $1 # fix double space and more to tab

echo -e ""

echo -e "================cleanbetty================"

echo -e "Removed all trailing whitespaces, enjoy :)"

echo -e "$1"
