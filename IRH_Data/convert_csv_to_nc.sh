#!/bin/bash

# First convert from a csv to an xyz file:

# Remove first line of file
#sed -i '1d' dsdtData.csv

# Replaces commas with spaces
sed -i '' 's/,/ /g' smb2.csv 

# Removes the first word from each line (i.e. the index, which we don't need)
#cut -f 2- -d ' ' smb2.csv  > smb2.xyz

gmt surface smb2.xyz -R920750/997590/1880000/1965720 -I500m -Gsmb2.nc -V
