export JAVA_HOME="/usr/local/opt/openjdk"
export FLUTTER_HOME="$HOME/flutter"
export EMACS_HOME="$HOME/.emacs.d"
export GOPATH="$HOME/go"

export PATH="/usr/local/sbin:/usr/local/opt/llvm/bin:/usr/local/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$FLUTTER_HOME/bin:$PATH"
export PATH="$EMACS_HOME/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

alias python="python3"
alias ll="ls -lha"
alias clr="clear"
alias vim="nvim"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

[ -f "/Users/ratmitgaitov/.ghcup/env" ] && source "/Users/ratmitgaitov/.ghcup/env" # ghcup-env
