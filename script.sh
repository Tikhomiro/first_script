#!/bin/bash
#if you delete file using rm{cur..pos}
echo "What file to start from"
read cur
echo "What file to stop from"
read pos
usege(){
	echo "Use: ./script you numbers, where numbers positive num. Script created file from N to X"
}
if [ "$cur" -lt 0 ] || [ "$pos" -lt 0 ]
then
	echo "Use positive number"
	usege
	exit 2
fi
while [[ "$cur" -le "$pos" ]];
do 
	if [[ -e "$cur" ]]
	then
	    echo File $cur already exists
	    cur = $(( cur + 1))
	    continue
	fi
	touch "$cur"
	cur=$((cur + 1))
done
