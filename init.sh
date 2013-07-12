#!/bin/bash

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages ]; then
  mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages
else
  echo "Not creating ST package directory..."
fi


if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ]; then
  ln -s $PWD/sublime3-user ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
else
  echo "Looks like you already have an ST user directory..."
fi
