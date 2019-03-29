#!/bin/bash

xcode-select --install

# configure dock
defaults write com.apple.dock orientation -string left
# defaults write com.apple.Dock autohide 1 # autohide
killall Dock

# brew stuff
if ! type "brew" > /dev/null; then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

else 
	echo "Homebrew Already Installed"
fi 

# cd ~/Dropbox/personal/mac-setup

# Install Applications from BrewFile
brew bundle

# oh-my-Zsh
if [ -d "~/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Python 2
echo ""
# Optional Python2 Stuff 
if ! type "pip" > /dev/null; then
  # See: https://pip.pypa.io/en/stable/installing/#installing-with-get-pip-py
  # pip install -r python2_requirements.txt
	pip install dateparser
	pip install 'python-dateutil>=2.5.0'
	pip install matplotlib
	pip install 'numpy>=1.12.0'
	pip install pandas
	pip install squarify
	pip install todoist-python
else 
	echo "Python 2 Additions Already Installed!"
fi

# Python 3
if ! type "python3" > /dev/null; then
  brew install python3
  python3 --version
  mkdir ~/.virtualenvs
  # base python3 environment
  python3 -m venv ~/.virtualenvs/base
  source ~/.virtualenvs/base/bin/activate
  # Alternatively pip install -r python3_requirements.txt
  pip3 install requests
  pip3 install numpy
  pip3 install pandas
  pip3 install matplotlib
  pip3 install jupyter
  pip3 install jupyterlab
  deactivate
  # TODO: python3 data science environment
  # https://docs.anaconda.com/anaconda/packages/py3.6_win-64/
  # TODO: python3 tensorflow environment
  # TODO: python3 flask environment
else 
	echo "Python 3 Already Installed!"
fi

# ruby
# TODO
# rbenv install 2.2.5
# rbenv global 2.2.5
# gem install bundler

# install rclone
if ! type "rclone" > /dev/null; then
  curl https://rclone.org/install.sh | sudo bash
else 
	echo "Rclone Already Installed"
fi

# Maybe TODO: Remove and Add Dock Icons
# https://github.com/kcrawford/dockutil

# dotfiles
# Reference: https://github.com/webpro/awesome-dotfiles
# Examples: https://github.com/mathiasbynens/dotfiles
# ln -s ~/Dropbox/personal/mac-setup/dotfiles/.bash_profile ~/.bash_profile
# ln -s ~/Dropbox/personal/mac-setup/dotfiles/.gitconfig ~/.gitconfig
# ln -s ~/Dropbox/dotfiles/.vimrc ~/.vimrc ~/.vimrc
# ln -s ~/Dropbox/dotfiles/.vimrc ~/.zshrc ~/.zshrc

echo ""
echo "******************** Done ********************"
echo "Don't forget to generate and SSH key"
echo "For an example, see: https://confluence.atlassian.com/bitbucketserver/creating-ssh-keys-776639788.html"
