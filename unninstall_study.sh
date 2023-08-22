#!/bin/bash


echo "Type the study name and then hit enter(return):	"
read study

#Removes enviroment folder
# machete command
#find ~/miniconda3/envs/$study -exec rm -rf {} \; 
#friendly command
conda remove -n $study --all -y

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


echo "Finished!"
