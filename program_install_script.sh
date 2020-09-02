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
sudo apt install -yy build-essential curl vim git timeshift vlc tracker htop net-tools texlive-latex-extra texlive-lang-german texlive-science texmaker gnome-tweaks locate nodejs npm youtube-dl libreoffice-writer libreoffice-calc inkscape

sudo snap mp3gain

#Installing sciebo client
sudo wget -nv https://www.sciebo.de/install/linux/Ubuntu_20.04/Release.key -O - | sudo apt-key add -
echo 'deb https://www.sciebo.de/install/linux/Ubuntu_20.04/ /' | sudo tee -a /etc/apt/sources.list.d/owncloud.list
sudo apt update
sudo apt install sciebo-client

#Setting git parameters
git config --global user.email "rohitsrao@gmail.com"
git config --global user.name "Rohit"
git config --global core.editor "vim"

#Installing vim plug
#Making directory .vim and autoload inside it
#Change permission of .vim to $USER after creating it
sudo mkdir /home/$USER/.vim
sudo chown $USER: /home/$USER/.vim
sudo mkdir /home/$USER/.vim/autoload
sudo curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#Installing vim-latex
wget https://sourceforge.net/projects/vim-latex/files/releases/vim-latex-1.10.0.tar.gz
tar -xvf vim-latex-1.10.0.tar.gz
mv vim-latex-1.10.0 vim-latex
sudo mv ./vim-latex/ ~/.vim/
rm vim-latex-1.10.0.tar.gz

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
