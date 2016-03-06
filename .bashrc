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

# Run .cygrc if on a cygwin install. I know it doesnt check that the file
# actually exists first. It crashes, I presume.
if [ `uname -o` == "Cygwin" ]; then
  source "${HOME}/.cygrc"
fi

# Note that my ~/bin folder needs to be added to $PATH from your favourite
# non-.bashrc file (i.e. .profile or .bash_profile or what have you)
wake

alias ..='cd ..'
alias america='echo please no'
alias la='ls -lAh --color=tty'
alias ls='ls -lh --color=tty'
alias mkdir='mkdir -p'
alias revim='vim -c "normal! '\''0"' 
