#! /bin/bash

for dir in */ ; 
do 
	# check if in the directory is present a local copy 
	# of the dropbox executable
	if [ ! -d $dir/.dropbox-dist ]	
	then
		echo "no dropbox executable found in $dir"
	else
		HOME=$(realpath "$dir") $dir/.dropbox-dist/dropboxd 2>/dev/null &		
	fi
done


