#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
export USERNAME=`vscode`

## update and install required packages
sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  sudo \
  openssh-client \
  less \
  wget \
  unzip \
  lsb-release \
  vim \
  powerline \
  fonts-powerline \
  zsh

npm i -g yarn

curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-installer | bash
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf

echo "source $PWD/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc


# Cleanup
sudo apt-get autoremove -y
sudo apt-get autoremove -y

