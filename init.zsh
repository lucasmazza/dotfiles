eval "$(hub alias -s)"
eval "$(rbenv init -)"
eval "$(starship init zsh)"

. $(brew --prefix asdf)/asdf.sh

root="$(cd $(dirname "${(%):-%N}"); pwd)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

for directory in $HOME/src/*; do
  export CDPATH="$CDPATH:$directory"
done

export HOMEBREW_NO_AUTO_UPDATE=1
export PATH="$HOME/bin:$HOME/.bin:$root/bin:$PATH"
export EDITOR="codium -w -n"
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

test -f ~/.secrets.sh && source ~/.secrets.sh
test -f $root/aliases.sh && source $root/aliases.sh
