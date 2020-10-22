function current_ruby() {
  if [[ -f Gemfile || -f .ruby-version || -f gems.rb ]]; then
    echo -ne '\033[1;31m'
    echo -n $(rbenv version-name)
    echo -n ' '
  fi
}

function git_branch() {
  echo -ne '\033[1;33m'
  if git rev-parse --git-dir > /dev/null 2>&1; then
    echo -n $(__git_ps1)
  else
    echo -n "(untracked)"
  fi
}

function linebreak() {
  echo -e '\033[00m'
  echo -n '$ '
}

function identifier() {
  local personal=$(git config user.email | grep hey)
  if [[ -n $personal ]]; then
    # :zap:
    echo -n '⚡'
  else
    # :office:
    echo -n '🏢'
  fi
}

export PS1="\`identifier\`  \w | \`current_ruby\`\`git_branch\` \`linebreak\`"
