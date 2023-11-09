#!/bin/bash


while true; do

	echo "Type the study name and then hit enter(return):	"
	read study




	#Removes enviroment folder
	# machete command

	if [ -e ~/miniconda3/envs/$study ]; then
		find ~/miniconda3/envs/$study -exec rm -rf {} \;
	elif [ -e ~/miniconda/envs/$study ]; then	 
		find ~/miniconda/envs/$study -exec rm -rf {} \;
	
	#friendly command

	#if [ -e ~/miniconda3/envs/$study ]; then
	#	conda remove -n $study --all -y
	#elif [ -e /miniconda/envs/$study ]; then
	#	conda remove -n $study --all -y
	else
		echo "Study Name was not found in the computer. Please double check the name and try again."
		#exit
	fi		

	#Desktop launcher
	desktop=$study".sh"
	inst="install_"$desktop

	#Deleting desktop launcher
	echo "Looking for launcher..."
	if [ -e ~/Desktop/$desktop ]; then
		find ~/Desktop/$desktop -exec rm -rf {} \; 
		echo "desktop launcher deleted!"
	else
		echo "desktop launcher not found..."
	fi

	echo "Looking for installation file: $inst"
	if [ -e ~/Downloads/$inst ]; then
		find ~/Downloads/$inst -exec rm -rf {} \; 
		echo "installation scrip deleted!"
	else
		echo "installation script not found..."
	fi


	echo "Press enter/retun to try again. Press Esc to exit."
    read -s -n 1 key
    if [ "$key" == $'\x1b' ]; then
        break  # salir con escape
    fi

done

echo "Finished!"