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
sysn=`uname -s`
sysn="${sysn:0:6}"
if [ $sysn == "CYGWIN" ]; then
  source "${HOME}/.cygrc"
fi
if [ $sysn == "Darwin" ]; then
  BSD=true
fi
# please pretty this up into a piece of code that doesnt use
# a temporary variable?

#adds ~/bin to path if its not there already, i guess
if !([[ ":$PATH:" == *":$HOME/bin:"* ]]); then
  PATH=$PATH:~/bin/
fi

wake

alias ..='cd ..'
alias america='echo please no'
alias la='ls -lAh --color=tty'
if !($BSD); then
  alias ls='ls -lh --color=tty'
else
  alias ls='ls -lGh'
fi
alias mkdir='mkdir -p'
alias revim='vim -c "normal! '\''0"' 
alias splash='echo But nothing happened.'
alias sra='chmod a+r'
export PS1="\[$(tput setaf 7)\][\[$(tput setaf 6)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 3)\]\h\[$(tput setaf 7)\]:\[$(tput setaf 2)\]\W\[$(tput setaf 7)\]] $ \[$(tput sgr0)\]"
