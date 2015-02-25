test -f /opt/boxen/env.sh && source /opt/boxen/env.sh

ROOT="$(dirname "${BASH_SOURCE[0]}")"

completion="$(brew --prefix)/etc/bash_completion"
if [ -f $completion ]; then
  . $completion
fi

export PATH="$HOME/bin:$ROOT/bin:$PATH"
export EDITOR="atom -w -n"

export BUNDLE_JOBS=1

export ATOM_REPOS_HOME="$HOME/code/github"

test -f ~/.secrets.sh && source ~/.secrets.sh
source $ROOT/scripts/prompt.sh
source $ROOT/scripts/aliases.sh
