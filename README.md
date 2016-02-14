# dotfiles

## Installation

```sh
git clone git@github.com:lucasmazza/dotfiles.git ~/src/dotfiles
cd ~/src/dotfiles
./install
```

The [`install`](install) script will:

* Add symlinks for each file under [`symlinks`](symlinks) to your home directory.
* Add symlinks for each file under `~/Dropbox/symlinks` to your home directory.
* Inject the `init.sh` file in your `~/.profile`.
* Create a set of standard directories under `~/src` to organize your git repositories.

## Utilities

* [`apache2`](bin/apache2)
* [`b00m`](bin/b00m)
* [`bunpdate`](bin/bunpdate)
* [`extract`](bin/extract)
* [`gifit`](bin/gifit)
* [`html`](bin/html)
* [`loop_this`](bin/loop_this)
* [`mit`](bin/mit)
* [`pullall`](bin/pullall)
* [`rbenv-lock`](bin/rbenv-lock)
* [`rconsole`](bin/rconsole)
* [`rlint`](bin/rlint)
* [`rmb`](bin/rmb)
* [`shipit`](bin/shipit)
* [`update-gem`](bin/update-gem)
