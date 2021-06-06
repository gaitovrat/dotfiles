export JAVA_HOME="/usr/local/opt/openjdk"
export GOPATH="$HOME/go"

export PATH="/usr/local/sbin:/usr/local/opt/llvm/bin:/usr/local/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias python="python3"
alias ll="ls -lha"
alias clr="clear"
