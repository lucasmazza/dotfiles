function current_ruby() {
  echo -ne '\033[1;31m'
  echo -n $(rbenv version-name)
}

function git_branch() {
   echo -ne '\033[1;33m'
   echo -n $(__git_ps1)
}

function linebreak() {
  echo -e '\033[00m'
  echo -n '$ '
}

function identifier() {
  local personal=$(git config user.email | grep gmail)
  if [[ -n $personal ]]; then
    # :zap:
    echo -n '⚡'
  else
    # :office:
    echo -n '🏢'
  fi
}

export PS1="\`identifier\`  \w | \`current_ruby\` \`git_branch\` \`linebreak\`"
