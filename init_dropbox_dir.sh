#! /bin/bash

DROPBOX_URL="https://www.dropbox.com/download?plat=lnx.x86_64" 


for dir in */ ; 
do 
	# check if in the directory is present a local copy 
	# of the dropbox executable
	if [ ! -d $dir/.dropbox-dist ]	
	then
		echo "no dropbox executable found in $dir"
		read -r -p "do you want to install .dropbox-dist? [Y/n]" response
		
		if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
		then
			# lets download dropbox
			if [ ! -d .cache/.dropbox-dist ]
			then
				mkdir .cache
				cd .cache
				wget -O - $DROPBOX_URL | tar xzf -
				cd ..
			fi
			# copy the dropbox distribution into the directories
			cp -r .cache/.dropbox-dist $dir
		else
		   echo "the folder $dir will be ignored"
		fi
	fi
	# check if in the fake home directory there is .Xauthority file
	if [ ! -f $dir/.Xauthority ] 
	then
		ln -s "$HOME/.Xauthority" "$dir" 2> /dev/null
		echo "no .Xauthority file found in $dir"
	fi
	
done




