# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# base-files version 4.2-4

# ~/.bash_profile: executed by bash(1) for login shells.

# check current OS;
# if CYGWIN, source .cygrc
# if Darwin, set a BSD flag so commands can know

# Set PATH so it includes user's private bin if it exists
if [ -d "${HOME}/bin" ] ; then
  PATH="${HOME}/bin:${PATH}"
fi

sysn=`uname -s`
sysn="${sysn:0:6}"
if [ $sysn == "CYGWIN" ]; then
  export TERM=cygwin
  if [ -f "${HOME}/.cygrc" ] ; then 
    source "${HOME}/.cygrc"
  fi
fi
if [ $sysn == "Darwin" ]; then
  BSD=1
else
  BSD=0
fi

# User dependent .bash_profile file

# source the users bashrc if it exists
if [ -f "${HOME}/.bashrc" ] ; then
  source "${HOME}/.bashrc"
fi

# .sysprofile is for every indivudual system and should not be shared
if [ -f "${HOME}/.sys_profile" ] ; then
  source "${HOME}/.sys_profile"
fi

# Set MANPATH so it includes users' private man if it exists
# if [ -d "${HOME}/man" ]; then
#   MANPATH="${HOME}/man:${MANPATH}"
# fi

# Set INFOPATH so it includes users' private info if it exists
# if [ -d "${HOME}/info" ]; then
#   INFOPATH="${HOME}/info:${INFOPATH}"
# fi

# [user@host:path] $
export PS1="\[$(tput setaf 7)\][\[$(tput setaf 6)\]\u\[$(tput setaf 7)\]@\[$(tput setaf 3)\]\h\[$(tput setaf 7)\]:\[$(tput setaf 2)\]\W\[$(tput setaf 7)\]] $ \[$(tput sgr0)\]"
