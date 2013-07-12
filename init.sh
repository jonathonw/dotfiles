#!/bin/bash

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages ]; then
  echo "Creating Sublime 3 settings directory"
  mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
else
  echo -e "Looks like Sublime 3 has already created its settings directory... skipping"
fi


if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ]; then
  echo "Linking Sublime Text settings..."
  ln -s $PWD/sublime3-user ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
else
  echo "Looks like you already have an ST user directory..."
  echo "  Delete it first if you want to use this user settings package"
fi

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Package\ Control ]; then
  echo "Installing Package Control for Sublime 3..."
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
  git clone https://github.com/wbond/sublime_package_control.git "Package Control"
  cd "Package Control"
  git checkout python3
else
  echo "Looks like Package Control for Sublime 3 is already installed... skipping"
fi
