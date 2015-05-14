export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh

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

# jump to dir
alias gitz="cd $HOME/Documents/gitz"
alias ddata="cd $HOME/Library/Developer/Xcode/DerivedData"
alias dotgather="pushd $PWD && cd $HOME/Documents/gitz/dotfiles && make gather && git add -A && git commit -a -m 'nother update' && git push origin master && popd"
alias dotplant="pushd $PWD && cd $HOME/Documents/gitz/dotfiles && make plant && popd"

# env var
export gitz="$HOME/Documents/gitz"


# usefull git aliases
alias gc='git commit -a -m'
alias gpush='git push origin master'
alias gpull='git pull origin master'
alias gs='git status'
alias ga='git add -A'
alias grao='git remote add origin'
alias gch='git checkout'
alias gl='git log'

#use brew vim
alias vim='/usr/local/bin/vim'
export EDITOR='/usr/local/bin/vim'

# why would you ever not work inside of tmux
tmux -2

# set paths
export NODE_PATH=/Users/drwizzard/.node/lib/node_modules
export PATH=/Users/drwizzard/.node/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/drwizzard/.bash/nacnud/bin/
  
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
