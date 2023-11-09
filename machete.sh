#!/bin/bash


	echo "Type the study name and then hit enter(return):	"
	read study

	#Desktop launcher
	desktop=$study".sh"
	inst="install_"$desktop

	#------Removes enviroment folder
	# machete command
	#find ~/miniconda3/envs/$study -exec rm -rf {} \; 
	
	if [ -d ~/miniconda3/envs/$study ]; then rm -Rf ~/miniconda3/envs/$study; 
	elif [ -d ~/miniconda/envs/$study ]; then rm -Rf ~/miniconda3/envs/$study; 
	else
		echo "Study Name was not found in the computer. Please double check the name and try again."
		exit
	fi	
	

	#Deleting desktop launcher
	echo "Looking for launcher..."
	if [ -e ~/Desktop/$desktop ]; then rm -Rf ~/Desktop/$desktop; 
		echo "desktop launcher deleted!"
	else
		echo "desktop launcher not found..."
	fi

	echo "Looking for installation file: $inst"
	if [ -e ~/Downloads/$inst ]; then rm -Rf ~/Downloads/$inst; 
		echo "installation script deleted!"
	else
		echo "installation script not found..."
	fi


echo "Finished!"