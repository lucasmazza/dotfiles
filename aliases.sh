alias reload='source ~/.bash_profile'
alias ls='ls -AlhF'

alias spotlighton='sudo mdutil -a -i on'
alias spotlightoff='sudo mdutil -a -i off'
alias desktopon='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias desktopoff='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'