# dotfiles

## Installation

```sh
git clone git@github.com:lucasmazza/dotfiles.git ~/src/dotfiles
cd ~/src/dotfiles
./script/setup
```

The [`script/setup`](script/setup) script will:

* Add symlinks for each file under [`symlinks`](symlinks) to your home directory.
* Add symlinks for each file under `~/Dropbox/symlinks` to your home directory.
* Inject the `init.zsh` file in your `~/.zshrc`.
* Create a set of standard directories under `~/src` to organize your git repositories.

## Utilities

* [`apache2`](bin/apache2)
* [`ex-fmt`](bin/ex-fmt)
* [`ex-mktest`](bin/ex-mktest)
* [`extract`](bin/extract)
* [`gifit`](bin/gifit)
* [`loop_this`](bin/loop_this)
* [`osxnotify`](bin/osxnotify)
* [`pullall`](bin/pullall)
* [`rbenv-lock`](bin/rbenv-lock)
* [`rconsole`](bin/rconsole)
* [`slackbanner`](bin/slackbanner)
* [`update-gem`](bin/update-gem)
* [`update-hex`](bin/update-hex)
