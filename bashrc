export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
# test test

# setup promt header
PS1="\[\033[01;31m\]\u\[\033[0;37m\]@\[\033[01;31m\]\h\[\033[00m\]:\[\033[01;35m\]\W\[\033[00m\]\[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtcyn\]\$\[$txtwht\] "

#change dir colors
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# usefull navigation and location aliases
alias ..='cd ..'
alias ls='ls -G'
alias ll='ls -lahG'
alias la='ls -aG'
alias l='ls -1G'

# usefull git aliases
alias gitz='cd ~/Documents/gitz'
alias ddata='cd /Users/$USER/Library/Developer/Xcode/DerivedData'
alias gc='git commit -a -m'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gs='git status'
alias ga='git add -A'
alias grao='git remote add origin'
alias gch='git checkout'
alias gl='git log'

# nacnud script aliases
#alias inp='~/.bash/nacnud/bin/initnodeproj.sh'

alias vim='/usr/local/bin/vim'
export EDITOR='/usr/local/bin/vim'

# setup global variabls for ssh servers
export slug="104.131.146.51"

export PYTHONSTARTUP=$HOME/.pythonstartup

# why would you ever not work inside of tmux
tmux -2

export NODE_PATH=/Users/drwizzard/.node/lib/node_modules
export PATH=/Users/drwizzard/.node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/drwizzard/.bash/nacnud/bin/
  
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi