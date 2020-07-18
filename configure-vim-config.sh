#!/bin/bash 

sudo apt-get install vim 

# nerd font install 
https://www.nerdfonts.com/font-downloads
https://www.programmingfonts.org/

~/.fonts
fc-cache -fv

# install spacevim 

curl -sLf https://spacevim.org/install.sh | bash

# extra config 

echo '
set clipboard=unnamedplus
set mouse=a
' >> ~/.vim/vimrc 
