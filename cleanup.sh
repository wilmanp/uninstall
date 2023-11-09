#!/bin/bash

#Deletes files (in the download folder) that are 3 months or older.
while true; do
	#statements


read -p "This script will delete files 90 days or older, including installation files and datasets. Would you like to proceed? (y/n):" yesno


case $yesno in 
	[yY]* ) echo "Ok! deleting files...";
		find ~/Downloads/ -mtime +90 -exec rm -rf {} +;
		rm -rf ~/.local/share/Trash/*
		break;;
	[nN]* ) echo "Exiting script...No files were deleted.";
		exit;;
		* ) echo "Invalid response. Enter y or n.";;

esac

done

echo "Completed!"
