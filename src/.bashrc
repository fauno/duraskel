# An umask that only gives read permissions to users in our group
umask 027

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt is user@hostname pwd$
export PS1='[\u@\h \W]\$ '

# Sudoers get their shell environment
test -w / &&
test -f /home/${SUDO_USER}/.bashrc &&
source /home/${SUDO_USER}/.bashrc
