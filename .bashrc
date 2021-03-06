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

#adds ~/bin to path if its not there already, i guess
#if ! [[ ":$PATH:" == *":~/bin:"* ]]; then
#  PATH=$PATH:~/bin/
#fi
#also doesnt work on cygwin apparently

wake

alias ..='cd ..'
alias america='echo please no'
if ! (($BSD)); then
  alias la='\ls -lAh --color=tty'
  alias ll='\ls -lh --color=tty'
  alias ls='\ls -h --color=tty'
else
  alias la='\ls -lAGh'
  alias ll='\ls -lGh'
  alias ls='\ls -Gh'
fi
alias mkdir='mkdir -p'
alias revim='vim -c "normal! '\''0"' 
alias splash='echo But nothing happened.'
alias sra='chmod a+r'
alias xyzzy='echo Nothing happens.'

export PS1="\[$(tput setaf 7)\][\[$(tput setaf 6)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 3)\]\h\[$(tput setaf 7)\]:\[$(tput setaf 2)\]\W\[$(tput setaf 7)\]] $ \[$(tput sgr0)\]"
