eval "$(hub alias -s)"
eval "$(rbenv init -)"
eval "$(nodenv init -)"

root="$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)"

test -f $(brew --prefix)/etc/bash_completion && . $(brew --prefix)/etc/bash_completion
test -f ~/.fzf.bash && source ~/.fzf.bash

for path in $HOME/src/*; do
  export CDPATH="$CDPATH:$path"
done

for path in $HOME/src/private/*; do
  export CDPATH="$CDPATH:$path"
done


export PATH="$HOME/bin:$HOME/.bin:$root/bin:$PATH"
export EDITOR="atom -w -n"
export ATOM_REPOS_HOME="$HOME/src/github"

test -f ~/.secrets.sh && source ~/.secrets.sh
source $root/scripts/prompt.sh
source $root/scripts/aliases.sh
