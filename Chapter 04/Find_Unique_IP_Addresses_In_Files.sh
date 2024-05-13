#!/bin/bash
IFS=$'\n'

#This prints a list of IP addresses from a file, without duplicates.
#It's assumed that you have a file with the list of IP addresses
#This script works on both Windows, Linux, and MAC

touch <file>    #change <file> to be actual file you want to parse

for entry in $(cut -d " " -f 1 $1); do
    echo $entry >> <file>
done
cat <file> | sort -h | uniq
