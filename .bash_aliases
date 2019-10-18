alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias ......='cd ../../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'

alias mkdir='mkdir -pv'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias gb='git branch'
alias gs='git status'
alias gd='git diff'
alias v='vim'

git config --global pretty.changelog "format:%Cred%H%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"
alias gl='git log --pretty=changelog -n 20'
alias grep='grep -n --color=always'
alias g='grep -r -n --color=always'


# Colorize bitbake output
function bb() {
bitbake "$@" 2>&1 | perl -wln -M'Term::ANSIColor' -e '
m/error:/ and print "\e[1;91m", "$_", "\e[0m"
or
m/Warning:/i and print "\e[1;93m", "$_", "\e[0m"
or
m/note:/ and print "\e[1;34m", "$_", "\e[0m"
or
m/Linking|\.a\b/ and print "\e[1;36m", "$_", "\e[0m"
or
print; '
}
