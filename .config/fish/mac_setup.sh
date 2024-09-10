#!/bin/sh

echo "Checking for the presence of Homebrew..."

which -s brew
if [[ $? != 0 ]]; then
  # Install Homebrew
  #ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Error: Brew not installed"
else
  brew update
fi

echo "Installing fish..."
brew install fish
echo "Fish installed."

echo "Installing fisher"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
echo "Fisher installed."

echo "Configuring plugins..."

echo "Installing z"
fisher install jethrokuan/z

echo "Installing tide"
fisher install IlanCosman/tide@v6

echo "All plugins successfully installed."

echo "Fish setup complete. Launching Tide configuration..."
# tide configure
