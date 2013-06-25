#!/bin/bash

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 2/Packages ]; then
  mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
else
  echo "Not creating ST package directory..."
fi


if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User ]; then
  ln -s $PWD/sublime-user ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
else
  echo "Looks like you already have an ST user directory..."
fi
