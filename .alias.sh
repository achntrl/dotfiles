# Shortcuts
alias dv="cd /Volumes/MacSD/Drive"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias doc="cd ~/Documents"
alias h="history"
alias p2="python"
alias p3="python3"
# Get week number
alias week='date +%V'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# OS X has no `sha256sum`, so use `shasum` as a fallback
command -v sha256sum > /dev/null || alias sha256sum="shasum -a 256"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# TODO: Fix this one
# Merge PDF files
# Usage: `mergepdf -o output.pdf input{1,2,3}.pdf`
alias mergepdf='/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py'

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Matrix style gibberish
alias matrix='echo -e "1"; while $t; do for i in `seq 1 29`;do r="$[($RANDOM % 2)]";h="$[($RANDOM % 4)]";if [ $h -eq 1 ]; then v="0 $r";else v="1 $r";fi;v2="$v2 $v";done;echo -e $v2;v2="";sleep 0.02;done;'

# Git custom shortcut
alias grbp="git rebase prod"

alias foldersize="du -sh * .* | gsort -h"
alias k="kubectl"

# Kubernetes
alias kx="kubectx"
alias kn="kubens"
alias kgsts="kubectl get sts"
alias kgstswide="kubectl get sts -o wide"
alias krr="kubectl rolling restart"
