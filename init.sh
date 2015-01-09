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

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages ]; then
  echo "Creating installed packages directory"
  mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
else
  echo "Looks like you already have an ST Installed Packages directory...  skipping"
fi

if [ ! -f ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package ]; then
  echo "Installing Package Control for Sublime 3..."
  cd ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
  curl -# -o "Package Control.sublime-package" https://packagecontrol.io/Package%20Control.sublime-package
else
  echo "Looks like you already have Package Control installed...  skipping"
fi

if [ ! -f /usr/local/bin/subl ]; then
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
else
  echo "subl command line tool already installed... skipping"
fi
