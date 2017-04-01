# dotfiles
A collection of machine configuration I use

## Install Apps / Deps
 - [Dropbox](https://www.dropbox.com/install)
 - [1 Password](https://agilebits.com/downloads)
 - [Homebrew](https://brew.sh/)
 - [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
 - [iTerm](https://www.iterm2.com/downloads.html)
 - [SublimeText](https://www.sublimetext.com/) (Don't forgot to drop in the license file)
 - [Atom](https://atom.io/)
 - [Google Chrome](https://www.google.com.au/chrome/browser/desktop/)
 - [Better Touch Tool](https://www.boastr.net/downloads/) (Don't forgot to drop in the license file)
 - [Cyberduck](https://cyberduck.io/?l=en) (Don't forgot to drop in the license file)
 - [Tunnelblick](https://tunnelblick.net/downloads.html) (Don't forgot to drop in the configuration files)
 - [Carbon Copy Cloner](https://bombich.com/download) (Don't forgot to drop in the license key)
 - [DriveDx](http://binaryfruit.com/download/drivedx/mac/1?ref=LicenseEmail) (Don't forgot to drop in the license key)
 - [Little Snitch](https://www.obdev.at/products/littlesnitch/download.html) (Don't forgot to drop in the license key)
 - [Hyperswitch](https://bahoom.com/hyperswitch)


## Do Configuration

#### SSH Config
```sh
ln -s $PWD/ssh/config ~/.ssh/config
```

#### Subl binary
```sh
ln -s /Applications/Sublime Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

#### Sublime synced settings  (Requires Dropbox)
```sh
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
mkdir ~/Dropbox/Apps/ST3
mv User ~/Dropbox/Apps/ST3
ln -s ~/Dropbox/Apps/ST3/User
```

#### Link Dotfiles
```sh
./install_dotfiles.sh
```

#### GPG Config
```sh
mkdir ~/.gpg
ln -s $PWD/gpg/gpg-agent.conf ~/.gpg
ln -s $PWD/gpg/gpg.conf ~/.gpg
```

#### Nginx Reverse Proxy Port Redirection
```sh
brew install nginx
# Link appropriately with /usr/local/etc/nginx/
```

## Machine Specific Config

If exists, the file `~/.zshrc-local` will be sourced. Put machine specific overrides/config in here.
