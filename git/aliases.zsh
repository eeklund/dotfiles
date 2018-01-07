alias git=hub
alias g=git

# checkout a new branch
alias gb='g checkout -b'

# check status
alias gs='g status -sb'

# add in patch mode
alias ga='g add -p'

# commit with visible changes
alias gc='g commit -v'

# push to origin
alias gp='g push origin HEAD'

# [hub] pull request
alias gpr='g pull-request'

# push and pr
alias gppr='gp && gpr'

# rebase -i
alias gr='g rebase -i master'

# switch back to master & pull master
alias gu='g checkout master && g pull origin master'

# log
alias gl="g log"
alias glog="g log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"

# delete local merged branches, but not master
alias gx='g branch --merged | grep -v master | xargs git branch -d'

# [hub] browse
alias gbr='g browse'

# set up local safe dir for pathing
alias gsf='mkdir .git/safe'

