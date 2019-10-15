!/bin/bash

echo "Installing xcode, look for dialog box"
xcode-select --install
read -p "Press [Enter] key after Xcode installation completes"

echo "Installing HomeBrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Brew formulae apps"
brew install r csvkit nmap python dos2unix netcat git gpg ical-buddy tmux wget mas lastpass-cli bash-completion vagrant-completion ansible tree jq r ansible-lint

echo "Installing Brew cask apps"
brew cask install firefox keepassx slack wireshark google-chrome iterm2 virtualbox vagrant xquartz powershell docker

echo "Installing microsoft-teams with Brew cask"
brew cask install microsoft-teams

echo "Open the 'App Store' and sign in with Apple account"
read -p "Press [Enter] key after singing in to App Store"

echo "Installing Microsoft RDP with MAS"
mas install $( mas search remote | awk '/Microsoft Remote Desktop 10/ {print $1}' )

echo "Creating directory structure"
mkdir -p $HOME/src/github/swansun/{priv,pub}
mkdir -p $HOME/var/{bak,bin,etc,opt,scratch}
