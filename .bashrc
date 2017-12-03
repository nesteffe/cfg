#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
if [[ ${EUID} == 0 ]] ; then
    PS1='\[\e[0;32m\][ \[\e[1;31m\]\u@\h:\w\[\e[0;32m\] ]\[\e[0m\]\n\t \$ '
else
    PS1='\[\e[0;32m\][ \[\e[1;32m\]\u@\h:\w\[\e[0;32m\] ]\[\e[0m\]\n\t \$ '
fi

export EDITOR=vi
export SYSTEMD_EDITOR=vi

export ANDROID_HOME=/opt/android-sdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk

eval $(dircolors ~/.dircolors)

alias ls='ls -F --color'
alias ssh='TERM=xterm-color ssh'

### be paranoid
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
export PERL5LIB=/usr/lib/perl5/vendor_perl
alias config='/usr/bin/git --git-dir=/home/nesteffe/.cfg/ --work-tree=/home/nesteffe'
