#!/bin/bash


echo "Type the study name and then hit enter(return):	"
read study

#removes enviroment folder
# machete command
#find ~/Desktop/$desktop -exec rm -rf {} \; 
#friendly command
conda remove -n $study --all -y

#desktop launcher
desktop=$study".sh"

#Deleting desktop launcher
if [-d ~/Desktop/$desktop]: then
	find ~/Desktop/$desktop -exec rm -rf {} \; 
	echo "desktop launcher deleted!"
else echo "desktop launcher not found."
fi


echo "$study was succesfully uninstalled"
