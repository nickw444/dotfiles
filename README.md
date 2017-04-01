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
 - [F.lux](https://justgetflux.com/)
 - [Spotify](https://www.spotify.com/au/download/mac/)
 - [Rescuetime](https://www.rescuetime.com/download)
 - [Kaleidoscope](https://itunes.apple.com/au/app/kaleidoscope/id587512244?mt=12)
 - [ksdiff](http://www.kaleidoscopeapp.com/ksdiff2)

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


#### ZSH Autosuggestions
```sh
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

#### FZF Fuzzy Ctr-r
```sh
brew install fzf
/usr/local/opt/fzf/install
```

#### Git Config
```
ln -s $PWD/git/config ~/.git/config
```


## Machine Specific Config

If exists, the file `~/.zshrc-local` will be sourced. Put machine specific overrides/config in here.
