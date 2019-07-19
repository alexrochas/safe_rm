#!/bin/bash

# show me the money!
echo $1

# create the bin
mkdir ./.bin_trash

# copy to a temporary folder
cp $1 ./.bin_trash

# remove the original
rm $1
