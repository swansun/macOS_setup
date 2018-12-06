!/bin/bash

echo "Installing xcode, look for dialog box"
xcode-select --install

echo "Installing HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Running 'brew doctor'"
brew doctor

echo "Installing Brew formulae apps"
brew install r csvkit nmap python dos2unix netcat git gpg ical-buddy tmux wget

echo "Installing Brew cask apps"
brew cask install skype firefox keepassx slack wireshark microsoft-teams google-chrome

echo "Creating directory structure"
mkdir -p $HOME/src/github/swansun/{priv,pub}
mkdir -p $HOME/var/{bak,bin,etc,opt,scratch}
