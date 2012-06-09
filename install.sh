#!/bin/bash
sudo echo "Installing..."

# Creates ~/.bin directory if necessary
if [ ! -d "~/.bin" ]; then
  mkdir ~/.bin
fi

# Remove old implementations
rm ~/.bin/slowaris
rm ~/.bin/stopslow

# Adds directory to PATH permanently
if [ "$PATH" != *"/.bin"* ]; then
  echo 'PATH="$PATH:~/.bin"' >> ~/.profile
fi

# 'Installs' the files
cp ./slowaris ~/.bin
cp ./stopslow ~/.bin

# Gives permission to execute
sudo chmod +x ~/.bin/slowaris
sudo chmod +x ~/.bin/stopslow

sudo -k
echo "Done!"
