# dotfiles

## Installation

```sh
git clone git@github.com:lucasmazza/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
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
* [`loop_this`](bin/loop_this)
* [`pullall`](bin/pullall)
* [`rconsole`](bin/rconsole)
