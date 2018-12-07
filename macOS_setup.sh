!/bin/bash

echo "Installing xcode, look for dialog box"
xcode-select --install
read -p "Press [Enter] key after Xcode installation completes"

echo "Installing HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Brew formulae apps"
brew install r csvkit nmap python dos2unix netcat git gpg ical-buddy tmux wget

echo "Installing Brew cask apps"
brew cask install skype firefox keepassx slack wireshark google-chrome iterm2

echo "Installing microsoft-teams with Brew cask"
brew cask install microsoft-teams 

echo "Creating directory structure"
mkdir -p $HOME/src/github/swansun/{priv,pub}
mkdir -p $HOME/var/{bak,bin,etc,opt,scratch}
