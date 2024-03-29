#!/bin/bash

#This script is to copy files from the ~/.vim/ director and the ~/.vimrc
#into the config_and_scripts folder and then push to github

#Copy vimrc
sudo cp ~/.vimrc ./vim/vimrc
echo ".vimrc successfully copied to ./vim/vimrc"

#Copy UltiSnips directory
sudo cp -avr ~/.vim/UltiSnips/ ~/Documents/config_and_scripts/vim/
echo "UltiSnips Directory copied successfully"

#Copy colors directory
sudo cp -avr ~/.vim/colors/ ~/Documents/config_and_scripts/vim/
echo "colors directory copied successfully"

#Execute git status command
echo ""
echo "Running git status"
git status

