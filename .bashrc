#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

#Autostart
pfetch

#Aliases
alias vim="nvim"
alias vi="nvim"
alias nano="nvim"

#Other
export PATH=$PATH:/home/vali/.spicetify
export MANPAGER="nvim +Man!"
