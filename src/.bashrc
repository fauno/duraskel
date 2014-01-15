# An umask that only gives read permissions to users in our group
umask 027

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt is user@hostname pwd$
export PS1='[\u@\h \W]\$ '
