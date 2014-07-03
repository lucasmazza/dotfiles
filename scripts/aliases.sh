alias reload='source ~/.profile'
alias ls='ls -AlhF'

alias squid='squid -N -d 1'
alias ia='open $1 -a /Applications/iA\ Writer.app'
alias ql='qlmanage -p "$@" >& /dev/null'
alias spoton='sudo mdutil -a -i on'
alias spotoff='sudo mdutil -a -i off'

alias rtest='bundle exec ruby -Ilib:test "$@"'
alias rserver='ruby -run -e httpd -- -p 9292 .'

headers='curl --head'
