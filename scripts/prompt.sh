function current_ruby() {
  echo -ne '\033[0;31m'
  echo -n $(rbenv version-name)
}

function git_branch() {
   echo -ne '\033[0;33m'
   echo -n $(__git_ps1)
}

function linebreak() {
  echo -e '\033[37m'
  echo -n '$ '
}

function identifier() {
  local work=$(git config user.email | grep plataformatec)
  if [[ -z $work ]]; then
    # :zap:
    echo -n '⚡'
  else
    # :office:
    echo -n '🏢'
  fi
}

export PS1="\`identifier\`  \w | \`current_ruby\` \`git_branch\` \`linebreak\`"
