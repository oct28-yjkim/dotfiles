#!/bin/bash 

sudo apt install -y zsh 

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

sudo apt install fonts-powerline

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

sed -i 's/plugins=\(git\)/plugins=\(git zsh-autosuggestions zsh-syntax-highlighting \)/' ~/.zshrc

echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc


