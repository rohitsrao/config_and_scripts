#!/bin/bash

#To successfully run this script
#Download the latest tar.bz2 file from Zotero
#https://www.zotero.org/download/
#and rename it to zotero.tar.bz2

#Change directory to where zotero is installed
cd /home/$USER/test
echo "Changing directory to installed directory"

#Delete a file called test.file
sudo rm -r /opt/zotero
sudo rm ~/.local/share/applications/zotero.desktop
echo "Uninstalled the old version"

#Changing directory to download
cd /home/$USER/Downloads
echo "changing directory to Downloads"

#Extract to directory
echo "extracting latest version"
tar -xf zotero.tar.bz2

#Rename extracted directory
sudo mv ./Zotero_linux-x86_64/ ./zotero/
echo "renaming extracted directory"

#Move renamed directory to /opt
sudo mv ./zotero/ /opt/zotero/
echo "waiting for move to complete"
sleep 3
echo "moved directory to /opt/zotero"

#Running set_launcher_icon
cd /opt/zotero
bash set_launcher_icon
echo "set_launcher_icon run successfully"

#Symboilic linking of zotero.desktop
sudo ln -s /opt/zotero/zotero.desktop ~/.local/share/applications/zotero.desktop
echo "symbolic link created"
