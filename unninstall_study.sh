#!/bin/bash

echo "Type the study name and then hit enter(return):	"
read study

#removes enviroment folder
conda remove -n $study --all -y

desktop=$study".sh"

#Deleting desktop launcher
find ~/Desktop/$desktop -exec rm -rf {} \; 


echo "$study was succesfully uninstalled"