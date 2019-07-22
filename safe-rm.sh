#!/bin/bash

# script path
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

while getopts ":f:" option; do
	case "${option}" in
		f)
            echo "Force rm for $OPTARG!"
            rm $OPTARG
            exit 0
            ;;
	esac
done

# delete old files (older than 10 days)
echo "Cleanning old files in $SCRIPTPATH"
find $SCRIPTPATH/.bin_trash/* -mtime +10d | xargs rm -r
# show me the money!
echo "Removing $1"
# create the bin
[[ -f $SCRIPTPATH/.bin_trash ]] && mkdir ./.bin_trash
# copy to a temporary folder
cp $1 $SCRIPTPATH/.bin_trash
# remove the original
rm $1

