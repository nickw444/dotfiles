# dotfiles
A collection of machine configuration I use

## Install Apps / Deps
 - [1 Password](https://agilebits.com/downloads)
 - [Homebrew](https://brew.sh/)
 - [Oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh#getting-started)
 - [iTerm](https://www.iterm2.com/downloads.html) (Load config from `$PWD/iterm/prefs` folder)
 - [SublimeText](https://www.sublimetext.com/) (Don't forgot to drop in the license file)
 - [VS Code](https://code.visualstudio.com/)
 - [Mozilla Firefox](https://www.mozilla.org/en-US/firefox/new/)
 - [Google Chrome](https://www.google.com.au/chrome/browser/desktop/)
 - [Better Touch Tool](https://folivora.ai/downloads) (Don't forgot to drop in the license file)
 - [Cyberduck](https://cyberduck.io/?l=en) (Don't forgot to drop in the license file)
 - [Tunnelblick](https://tunnelblick.net/downloads.html) (Don't forgot to drop in the configuration files)
 - [Carbon Copy Cloner](https://bombich.com/download) (Don't forgot to drop in the license key)
 - [DriveDx](http://binaryfruit.com/download/drivedx/mac/1?ref=LicenseEmail) (Don't forgot to drop in the license key)
 - [Little Snitch](https://www.obdev.at/products/littlesnitch/download.html) (Don't forgot to drop in the license key)
 - [alt-tab](https://alt-tab-macos.netlify.app/)
 - ~[F.lux](https://justgetflux.com/)~ Enable NightShift
 - [Spotify](https://www.spotify.com/au/download/mac/)
 - ~[Rescuetime](https://www.rescuetime.com/download)~ Enable screen time & cloud sharing
 - [Kaleidoscope](https://itunes.apple.com/au/app/kaleidoscope/id587512244?mt=12)
 - [ksdiff](http://www.kaleidoscopeapp.com/ksdiff2)
 - [GPG Suite](https://gpgtools.org/)
 - [Fira Code Font](https://github.com/tonsky/FiraCode)
 - [Things](https://itunes.apple.com/au/app/things-3/id904280696?mt=12)
 - [Rectangle](https://rectangleapp.com/)
 - [Amphetamine](https://itunes.apple.com/au/app/amphetamine/id937984704?mt=12)
 - [Quitter](https://marco.org/apps)
 - [rmtrash](https://github.com/PhrozenByte/rmtrash) `brew install rmtrash`

## Do Configuration

#### SSH Config
```sh
ln -s $PWD/ssh/config ~/.ssh/config
```

#### Subl binary
```sh
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

#### Sublime synced settings (.dotfiles)
```sh
cd ~/Library/Application\ Support/Sublime\ Text/Packages/
rm -rf User
ln -s ~/.dotfiles/subl/User
```

#### Link Dotfiles
```sh
./install_dotfiles.sh
```

#### Tmux

On OSX we need to install reattach-to-user-namespace to allow tmux to function.

```
brew install reattach-to-user-namespace
```

#### GPG Config
```sh
mkdir ~/.gpg
ln -s $PWD/gpg/gpg-agent.conf ~/.gpg
ln -s $PWD/gpg/gpg.conf ~/.gpg
```

#### ZSH Autosuggestions

https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### FZF Fuzzy Ctr-r
```sh
brew install fzf
/usr/local/opt/fzf/install
```

## Generate New SSH Keys
```sh
ssh-keygen -R
```

Upload to [Gitlab](https://gitlab.com/profile/keys)/[Github](https://github.com/settings/keys)

## Machine Specific Config

If exists, the file `~/.zshrc-local` will be sourced. Put machine specific overrides/config in here.
