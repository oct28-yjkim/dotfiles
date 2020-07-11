#!/bin/bash 


# install zsh 
sudo apt install -y zsh 

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# download auto suggestions zsh plugin 
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# download sysntex-highliting zsh plugin 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install powerline font 
sudo apt install fonts-powerline

# enable zsh plugin 
sed -i 's/plugins=\(git\)/plugins=\(git zsh-autosuggestions zsh-syntax-highlighting \)/' ~/.zshrc

echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

# fasd 

# fzf 
sudo apt-get install fzf

# pet
wget https://github.com/knqyf263/pet/releases/download/v0.3.6/pet_0.3.6_linux_386.deb
dpkg -i 

# ripgrep 
### add zshrc

# bat 

# fd 
wget https://github.com/sharkdp/fd/releases/download/v8.1.1/fd_8.1.1_amd64.deb


# spacevim 
curl -sLf https://spacevim.org/install.sh | bash


