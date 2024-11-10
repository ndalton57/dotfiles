# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Remove this section later and create a function for selecting
# which key you want to add to the current session's agent
eval $(ssh-agent)
ssh-add ~/.ssh/github_key

export PATH=$PATH:/sbin:/usr/sbin

# Export the common PATH addition we discussed
export PATH=$PATH:/sbin:/usr/sbin
export PATH=$PATH:/usr/libexec/imv
export PATH=$PATH:/home/null/.cargo/bin

# Colors for ls and other commands
export CLICOLOR=1
alias ls='ls --color=auto'
alias l='ls -lFG'
alias lf='ls -d */'  # List directories
alias gits='git status'
alias gst='git status'
alias config='nvim ~/.bashrc'
alias hotload='hyprctl reload'
alias hyprconfig='vim ~/.config/hypr/hyprland.conf'

# Color definitions
MAGENTA='\[\e[35m\]'
GREEN='\[\e[32m\]'
CYAN='\[\e[36m\]'
BLUE='\[\e[34m\]'
RESET='\[\e[0m\]'

# Get current username and hostname
USER=$(whoami)
HOSTNAME=$(hostname)

# Custom prompt that mimics your PowerShell prompt
PS1="\n${MAGENTA}┌──(${RESET}${GREEN}${USER}@${HOSTNAME}${RESET}${MAGENTA})-[${RESET}${BLUE}\w${RESET}${MAGENTA}]${RESET}\n${MAGENTA}└─\$${RESET} "

export GPG_TTY=$(tty)
gpg-connect-agent updatestartuptty /bye >/dev/null

echo
fastfetch
