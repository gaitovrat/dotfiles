# Oh My Zsh 
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# 1Password
export SSH_AUTH_SOCK="$HOME/.1password/agent.sock"

# Alias
alias ..="cd .."
alias b="brew"
alias bu="b update && b upgrade"
alias s="sudo"

