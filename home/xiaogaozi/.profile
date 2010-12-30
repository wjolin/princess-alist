# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
export LESSOPEN='| /opt/local/bin/lesspipe.sh %s'

# enable color support of ls and also add handy aliases
alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some more ls aliases
alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'

alias df='df -h'
alias du='du -sh'
alias free='free -m'
alias go='gnome-open'
alias ml='telnet localhost 4000'
alias h3c='sudo linux1x -d'
alias p='/home/xiaogaozi/Repositories/SVN/gappproxy-read-only/localproxy/proxy.py &'
alias s='byobu'
alias minicom='minicom -c on'
alias sp='la | xargs du -s 2> /dev/null | sort -nr | head -n 20'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Enable Git completion.
if [ -f /opt/local/share/doc/git-core/contrib/completion/git-completion.bash ]; then
    . /opt/local/share/doc/git-core/contrib/completion/git-completion.bash
fi

# colorful man page
export PAGER="/usr/bin/less -s"
export BROWSER="$PAGER"
export LESS_TERMCAP_mb=$'\E[01;34m'
export LESS_TERMCAP_md=$'\E[01;34m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;33m'

export LESS='-R'

# MacPorts Installer addition on 2010-10-08_at_20:53:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export EDITOR=/opt/local/bin/vim
