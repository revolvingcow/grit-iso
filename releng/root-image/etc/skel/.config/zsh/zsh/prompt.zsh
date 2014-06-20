# Colors
white="%{[0;37m%}"
bwhite="%{[01;37m%}"
grey="%{[01;30m%}"
green="%{[01;32m%}" 
normal="%{[0m%}"

# Z-Styles
zstyle ':completion:*' menu select
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '-'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b'
zstyle ':vcs_info:*' enable git hg bzr svn
zstyle ':vcs_info:*' formats "${green}[${white}%s${green}::${white}%b%m%u%c${green}]${normal}"

# Any pre-commands
precmd ()
{
    vcs_info
}

# Prompts
PROMPT="${green}[${white}%D{%H:%M:%S}${green}] (${bwhite}%n${green}@${bwhite}%m${green}) (${bwhite}%~${green})${normal} "
RPROMPT='${vcs_info_msg_0_}'
