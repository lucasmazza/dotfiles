eval "$(hub alias -s)"
eval "$(rbenv init -)"
eval "$(starship init bash)"

root="$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)"

test -f $(brew --prefix)/etc/bash_completion && . $(brew --prefix)/etc/bash_completion
test -f ~/.fzf.bash && source ~/.fzf.bash

for path in $HOME/src/*; do
  export CDPATH="$CDPATH:$path"
done

export HOMEBREW_NO_AUTO_UPDATE=1
export PATH="$HOME/bin:$HOME/.bin:$root/bin:$PATH"
export EDITOR="atom -w -n"
export ATOM_REPOS_HOME="$HOME/src/github"

test -f ~/.secrets.sh && source ~/.secrets.sh
source $root/aliases.sh
