# MAKE SURE TO INSTALL XCODE VIA THE APP STORE FIRST
xcode-select --install
read -p "Press any key once that install is complete"

# Homebrew + Caskroom
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

brew cask install google-chrome
brew cask install google-drive
brew cask install slack
brew cask install flowdock
brew cask install dropbox
brew cask install microsoft-office

brew cask install anonvpn

brew cask install macvim
brew cask install p4merge
brew cask install sourcetree
brew cask install postgres
brew cask install virtualbox
brew cask install ios-console

brew install git
brew install openssl
brew install gpg
brew install wget
brew install imagemagick
brew install redis
brew install node
brew install mas

# App Store apps
mas install `mas search "Microsoft Remote Desktop" | head -1 | cut -d ' ' -f 1`
mas install `mas search "Microsoft OneNote" | head -1 | cut -d ' ' -f 1`
mas install `mas search "SQLPro for SQLite - database and coredata manager" | head -1 | cut -d ' ' -f 1`
mas install `mas search "Twitter" | head -1 | cut -d ' ' -f 1`
mas install `mas search "Kindle" | head -1 | cut -d ' ' -f 1`

# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# heroku
brew install heroku-toolbelt
heroku update
heroku login

# ruby + rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

rvm install 2.4
rvm all do gem update --system
rvm all do gem install bundler

# Xamarin
# brew cask install xamarin
# DOESNT WORK AS OF 2016-01-03 - points to wrong address: from caskroom: https://download.xamarin.com/Installer/Mac/XamarinInstaller.dmg
wget https://dl.xamarin.com/installer/XamarinInstaller.dmg
hdiutil attach -noautoopen XamarinInstaller.dmg
open /Volumes/Xamarin\ Installer/Install\ Xamarin.app

# TODO
# vim: pathogen, or some plugin system
# connect p4merge to git
# configure git (username, email)
# anyconnect
