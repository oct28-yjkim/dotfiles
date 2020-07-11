#!/bin/bash 

  git config --global user.email "seaofnight@hanmail.net"
  git config --global user.name "yjkim1"

  sudo apt-get install -y tig

# install nerd font all files 
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh



