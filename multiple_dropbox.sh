#! /bin/bash

for dir in */ ; 
do 
	# check if in the directory is present a local copy 
	# of the dropbox executable
	if [ ! -d $dir/.dropbox-dist ]	
	then
		echo "no dropbox executable found in $dir"
	else
		# check if in the fake home directory there is .Xauthority file
		if [ ! -f $dir/.Xauthority ] 
		then
			ln -s "$HOME/.Xauthority" "$dir" 2> /dev/null
			echo "no .Xauthority file found in $dir"
		else
			HOME=$(realpath "$dir") $dir/.dropbox-dist/dropboxd 2>/dev/null &
			
		fi	
	fi
done


