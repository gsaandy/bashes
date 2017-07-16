#React Native
alias rn="react-native"
alias rn-ios="rn run-ios"
alias rn-android="rn run-android"

#Maven
alias mci="mvn clean install"
alias mcp="mvn clean package"
alias mcist="mvn clean install -DskipTests"
alias mcpst="mvn clean package -DskipTests"

#git
alias gsts="git status"
alias gpl="git pull --no-ff"
alias gps="git push"
alias gcm="git checkout master"
alias gcd="git checkout develop"
alias glsb="git branch -a"
alias glsbt="git branch -vv"
alias glss="git stash list"
alias glog="git log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias fork="open -a fork"
alias show_files="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hide_files="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"
#javatoflow
export PATH="/opt/app/javaflow-1.1.0/bin:$PATH"

