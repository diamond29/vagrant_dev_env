#!/usr/bin/env bash

useradd -m $CREATE_USER
echo $CREATE_USER:$CREATE_PASSWORD | chpasswd
cd /home/$CREATE_USER


localectl set-keymap us
pacman -S --noconfirm ruby git
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH" >> cat ~/.bashrc
export PATH="$(ruby -e \'print Gem.user_dir\')/bin:$PATH"
gem install chef
git clone $VAGRANT_REPO
