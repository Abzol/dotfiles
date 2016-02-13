# To the extent possible under law, the author(s) have dedicated all # copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bashrc: executed by bash(1) for interactive shells.

# The latest version as installed by the Cygwin Setup program can
# always be found at /etc/defaults/etc/skel/.bashrc

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return
# Use case-insensitive filename globbing
shopt -s nocaseglob
# Aliases
#
# Some people use a different file for aliases
# if [ -f "${HOME}/.bash_aliases" ]; then
#   source "${HOME}/.bash_aliases"
# fi

wake

alias ..='cd ..'
alias cdd='cd /cygdrive/e/Wolfie/Desktop'
alias cde='cd /cygdrive/e/Wolfie'
alias clear='cls'
alias cls='tput clear' #root for `clear`
alias ffmpeg='/cygdrive/e/Wolfie/Tools/ffmpeg/bin/ffmpeg.exe'
alias la='ls -lAh --color=tty'
alias ls='ls -lh --color=tty'
alias mkdir='mkdir -p'
alias open='cygstart'
alias revim='vim -c "normal! '\''0"' 

