#!/usr/bin/env bash
# driver script 
sudo apt-get install -y git-core
git clone https://github.com/davidtadelberg/setup.git
./setup/setup.sh
git clone https://github.com/davidtadelberg/dotfiles.git
ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .
mv .emacs.d .emacs.d~
ln -s dotfiles/.emacs.d .
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
which git
which heroku
heroku login
ssh-keygen -t rsa
heroku keys:add
git clone https://github.com/davidtadelberg/bitstarter.git
cd bitstarter
heroku create
sudo apt-get update
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install -y nodejs
sudo npm install -g jshint
