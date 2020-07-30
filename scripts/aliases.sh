alias reload='source ~/.bash_profile'
alias ls='ls -AlhF'

alias squid='squid -N -d 1'
alias ia='open $1 -a /Applications/iA\ Writer.app'
alias ql='qlmanage -p "$@" >& /dev/null'

alias spotlighton='sudo mdutil -a -i on'
alias spotlightoff='sudo mdutil -a -i off'
alias desktopon='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias desktopoff='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'

alias rtest='bundle exec ruby -Ilib:test "$@"'
alias rserver='ruby -run -e httpd -- -p 9292 .'

alias pcat='pygmentize -O style=tango -f console256 -g'
