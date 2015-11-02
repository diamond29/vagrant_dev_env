#!/usr/bin/env bash

localectl set-keymap us
pacman -S --noconfirm ruby
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH" >> cat ~/.bashrc
export PATH="$(ruby -e \'print Gem.user_dir\')/bin:$PATH"
gem install chef
