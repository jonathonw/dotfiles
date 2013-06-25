#!/bin/bash

if [ ! -d ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User ]; then
  ln -s sublime-user ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User
else
  echo "Looks like you already have a user directory..."
fi
