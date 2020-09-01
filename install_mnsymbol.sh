#!/bin/bash

#This script is to install a LaTeX package MnSymbol.sty
#https://ctan.org/tex-archive/fonts/mnsymbol?lang=de

#Downloading the package MnSymbol
curl -O https://ftp.tu-chemnitz.de/pub/tex/fonts/mnsymbol.zip

#Unzipping
unzip mnsymbol.zip

#Navigating to required directory
cd mnsymbol
cd tex

#Installing
sudo latex MnSymbol.ins

#Copying files to the required directory
sudo mkdir -pv /usr/share/texlive/texmf-dist/tex/latex/MnSymbol/
sudo mv ./MnSymbol.sty /usr/share/texlive/texmf-dist/tex/latex/MnSymbol/MnSymbol.sty

#Moving up one directory
cd ..
sudo mkdir -pv  /usr/share/texlive/texmf-dist/fonts/source/public/MnSymbol/
sudo mv ./source/* /usr/share/texlive/texmf-dist/fonts/source/public/MnSymbol/

#Copying documentation
sudo mkdir -pv /usr/share/texlive/texmf-dist/doc/latex/MnSymbol/
sudo mv ./MnSymbol.ps /usr/share/texlive/texmf-dist/doc/latex/MnSymbol/
sudo mv ./MnSymbol.pdf /usr/share/texlive/texmf-dist/doc/latex/MnSymbol/
sudo mv ./README /usr/share/texlive/texmf-dist/doc/latex/MnSymbol/

#Installing PostScript Fonts
sudo mkdir -pv /usr/share/texlive/texmf-dist/fonts/map/dvips/MnSymbol/
sudo mkdir -pv /usr/share/texlive/texmf-dist/fonts/enc/dvips/MnSymbol/
sudo mkdir -pv /usr/share/texlive/texmf-dist/fonts/type1/public/MnSymbol/
sudo mv ./enc/MnSymbol.map /usr/share/texlive/texmf-dist/fonts/map/dvips/MnSymbol/
sudo mv ./enc/*.enc /usr/share/texlive/texmf-dist/fonts/enc/dvips/MnSymbol/
sudo mv ./pfb/*.pfb /usr/share/texlive/texmf-dist/fonts/type1/public/MnSymbol/

#Copying files in the tfm directory
sudo mkdir -pv /usr/share/texlive/texmf-dist/fonts/tfm/public/MnSymbol/
sudo mv ./tfm/* /usr/share/texlive/texmf-dist/fonts/tfm/public/MnSymbol/

#Regenerate the file database
sudo mktexlsr
sudo updmap-sys --enable MixedMap MnSymbol.map

#Removing the downloaded directories
cd ..
rm -rf mnsymbol mnsymbol.zip




