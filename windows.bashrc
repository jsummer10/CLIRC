# File   : .bashrc
# System : Windows

#----------------------
#     Path Changes
#----------------------

# export PATH="$PATH:/path/to/something"

#----------------------
#       History
#----------------------

# history size
export HISTFILESIZE=10000
export HISTSIZE=5000
export HISTCONTROL=erasedups:ignoredups:ignorespace

# ignore duplicates
histcontrol=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# check the window size after each command
shopt -s checkwinsize

# causes bash to append to history instead of overwriting it
shopt -s histappend
PROMPT_COMMAND="history -a"

# search command line history
alias h="history"
alias hg="history | grep"

# show top 10 commands
alias topcmds="history | awk '{cmd[\$2]++} END {for(elem in cmd) {print cmd[elem] \" \" elem}} | sort -n -r | head -10"

# up/down partial history search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

#----------------------
#       General
#----------------------

# list commands with color
alias ls="ls --color=auto"
alias ll="ls -l --color=auto"
alias la="ls -la --color=auto"

# shortcuts
alias c="clear"
alias x="exit"

# bashrc commands
alias src="source ~/.bashrc"
alias bashrc="code ~/.bashrc"
alias inputrc="code ~/AppData/Local/Programs/Git/etc/inputrc"

# directory navigation
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# show directory after changing directory
cd() {
  builtin cd "$@" && pwd
}

# search files in the current folder
alias f="find . | grep"

# find most recent in directory
alias mostrec="find . -type f -printf '%p\n' | sort -n | cut -f2- -d\" \" | tail"

# colors
blk='\[\033[01;30m\]'   # Black
red='\[\033[01;31m\]'   # Red
grn='\[\033[01;32m\]'   # Green
ylw='\[\033[01;33m\]'   # Yellow
blu='\[\033[01;34m\]'   # Blue
pur='\[\033[01;35m\]'   # Purple
cyn='\[\033[01;36m\]'   # Cyan
wht='\[\033[01;37m\]'   # White
clr='\[\033[00m\]'      # Reset

# calendars
alias jan='cal -m 01'
alias feb='cal -m 02'
alias mar='cal -m 03'
alias apr='cal -m 04'
alias may='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias aug='cal -m 08'
alias sep='cal -m 09'
alias oct='cal -m 10'
alias nov='cal -m 11'
alias dec='cal -m 12'

# open in file explorer
alias open="explorer"

# user info
export USER=${whoami}
export USERDOMAIN="NOS"

#----------------------
#        Python
#----------------------

alias python="python3"

#----------------------
#         Git
#----------------------

alias gs="git status"
alias ga="git add"
alias gaa="git add --all && gs"
alias gc="git commit"
alias gp="git push"

alias gedit="git config --global --edit"
alias gitrestore="git reset --hard && git clean -fd"
alias uncommit="git reset --soft HEAD^"
alias gconfig="code ~/.gitconfig"
alias unstage="git restore --staged *"

alias gdiff="git difftool"
alias gcomp="git difftool origin/master"
alias gdiffdir="git difftool --dir-diff origin/master"

alias gmerge="git mergetool"
alias gmlocal="git checkout --ours ."
alias gmremote="git checkout --theirs ."

alias rmorig="find . -name '*.orig' -delete"
