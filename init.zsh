eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(hub alias -s)"
eval "$(rtx activate zsh)"

root="$(cd $(dirname "${(%):-%N}"); pwd)"

FPATH=$HOMEBREW_PREFIX/share/zsh/site-functions:$FPATH

autoload -Uz compinit
compinit

for directory in $HOME/src/*; do
  export CDPATH="$CDPATH:$directory"
done

export PATH="$HOME/bin:$HOME/.bin:$root/bin:$PATH"
export EDITOR="code -w -n"

# Set `rtx/asdf install` flags for Erlang and Postgres
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
export POSTGRES_EXTRA_CONFIGURE_OPTIONS="--with-uuid=e2fs"

# Enables Elixir/Erlang shell history
export ERL_AFLAGS="-kernel shell_history enabled"

# Disables brew auto updates when doing `brew install`
export HOMEBREW_NO_AUTO_UPDATE=1

test -f ~/.secrets.sh && source ~/.secrets.sh
test -f $root/aliases.sh && source $root/aliases.sh
test -f ~/.fzf.zsh && source ~/.fzf.zsh
