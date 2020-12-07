#!/bin/bash

#Updating packages
sudo apt-get update

#Add repositories
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-add-repository -y universe

#Update and upgrade after adding repositories
sudo apt-get update
sudo apt-get upgrade

#Installing  applications
sudo apt install -yy build-essential curl vim git timeshift tracker htop net-tools gnome-tweaks locate nodejs npm calc
sudo apt install -yy texlive-latex-extra texlive-lang-german texlive-science texmaker latexmk 
sudo apt install -yy youtube-dl vlc
sudo apt install -yy libreoffice-writer libreoffice-calc inkscape zathura
sudo apt install -yy xdotool 
sudo apt install -yy julia

sudo snap install mp3gain pick-colour-picker

#Setting git parameters
git config --global user.email "rohitsrao@gmail.com"
git config --global user.name "Rohit"
git config --global core.editor "vim"
git config --global diff.tool vimdiff
git config --global merg.tool vimdiff
git config --global difftool.prompt false

#Installing vim plug
#Making directory .vim and autoload inside it
#Change permission of .vim to $USER after creating it
sudo mkdir /home/$USER/.vim
sudo chown $USER: /home/$USER/.vim
sudo mkdir /home/$USER/.vim/autoload
sudo curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Copy vimrc
cp ./vim/vimrc ~/.vimrc

#Installing sciebo client
sudo wget -nv https://www.sciebo.de/install/linux/Ubuntu_20.04/Release.key -O - | sudo apt-key add -
echo 'deb https://www.sciebo.de/install/linux/Ubuntu_20.04/ /' | sudo tee -a /etc/apt/sources.list.d/owncloud.list
sudo apt update
sudo apt install sciebo-client

#Installing brave browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

#Python stuff
sudo apt-get -yy install python3-venv
mkdir -p /home/$USER/environments
cd /home/$USER/environments
python3 -m venv deepnn
source /home/$USER/environments/deepnn/bin/activate

#Upgrading pip
python3 -m pip install --upgrade pip

#Installing pip packages
pip install ipympl
pip install matplotlib
pip install numpy
pip install pandas
pip install pickle-mixin
pip install scikit-learn
pip install sympy
pip install --upgrade tensorflow

#Installing jupyter lab and extension for vim
#If it throws error, check if the extension is still valid
pip install jupyterlab
jupyter labextension install @axlair/jupyterlab_vim
jupyter labextension install @jupyter-widgets/jupyterlab-manager
jupyter lab build

#Update Database
sudo updatedb
