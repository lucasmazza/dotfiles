source /opt/boxen/env.sh

shopt -s globstar
ROOT="$(dirname "${BASH_SOURCE[0]}")"

# Bash Completion (install bash-completion with homebrew to enable it
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

source $ROOT/scripts/prompt.sh
source $ROOT/scripts/aliases.sh

export PATH="$HOME/bin:$ROOT/bin:$PATH"
export EDITOR="atom -w -n"

export BUNDLE_JOBS=1

export ATOM_REPOS_HOME="$HOME/code/github"
