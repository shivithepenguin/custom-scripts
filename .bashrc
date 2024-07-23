
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias edex-ui='Downloads/edexui.AppImage'
alias aur='pikaur'
alias la='ls -a'
alias rmwaste='sudo pacman -Rns $(pacman -Qdtq)'
alias tlauncher="java -jar ~/Downloads/tlauncher/TLauncher.jar"

PS1='
\[\e[1;38;5;24m\]  $PWD
➡\[\e[0m\] '

#(cat ~/.cache/wal/sequences &)

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

if [ -f "/usr/share/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source /usr/share/gitprompt.sh
fi

