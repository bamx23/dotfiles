# My dotfiles

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
* Please configure the `rcrc` file if you'd like to make personal overrides in a different directory.