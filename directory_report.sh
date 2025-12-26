#!/bin/bash
source ./libs/info.sh
echo $1
if [ -n "$1" ]; then
	get_info "$1";
	print_info "$1" "$file_format"
	echo "---$values---"
else
	echo "Needs to add a path as first argument to work."
fi
