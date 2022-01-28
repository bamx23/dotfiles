# My dotfiles

## Requirements

Install zsh first.

Install [antigen](https://github.com/zsh-users/antigen/wiki/Quick-start):
```bash
curl -L git.io/antigen > $HOME/antigen.zsh
```

## Install

Clone this repo:
```bash
git clone https://github.com/bamx23/dotfiles.git ~/.dotfiles
```

Install [rcm](https://github.com/thoughtbot/rcm):
```bash
brew install rcm
```

Install the dotfiles:
```bash
env RCRC="${HOME}/.dotfiles/rcrc" rcup
```

After the initial installation, you can run `rcup` without the one-time variable `RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future runs of `rcup`). [See example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard configuration options:

* Exclude the `README.md` and `LICENSE` files, which are part of the `dotfiles` repository but do not need to be symlinked in.
* Exclude the `extra` directory as it contains files that should not be symlinked.
* Please configure the `rcrc` file if you'd like to make personal overrides in a different directory.
* Local modifications to `$PATH` can be done in `.shell-paths-local` (create one if needed).

## Extra

### iTerm 2

To make iTerm 2 use the config from this repo, run this:
```bash
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "${HOME}/.dotfiles/extra/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
```

## Troubleshooting

* `character not in range`: run `sudo echo "en_US.UTF-8" > /etc/locale.conf`
