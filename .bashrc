#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# some aliases
alias ls='ls --color=auto'
alias l='ls --color=auto -lA'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias mosh="mosh -n --no-init"

# prompt
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] '

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# paths
export PATH=$PATH:$HOME/local/bin
export PATH=$PATH:$HOME/local/sbin
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/local/lib
export C_INCLUDE_PATH=$C_INCLUDE_PATH:$HOME/local/include
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:$HOME/local/include
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/local/lib
export PYTHONPATH=$PYTHONPATH:$HOME/local/lib/python3.3:$HOME/Projects/lpj/python

# remember path for new tabs
. /etc/profile.d/vte.sh
