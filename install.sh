#! /bin/zsh

script_path="$(realpath "$0")"
cd $(dirname $script_path)

if ! [ -d $HOME/.oh-my-zsh ]; then
  echo Install OhMyZsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  rm -v $HOME/.zshrc
fi

echo Installing configs
if ! [ -f $HOME/.vimrc ]; then
  ln -v .vimrc $HOME/.vimrc
fi

if ! [ -f $HOME/.zshrc ]; then
  ln -v .zshrc $HOME/.zshrc
fi

if ! [ -f $HOME/.zprofile ]; then
  ln -v .zprofile $HOME/.zprofile
fi

if ! command -v brew 2>&1 > /dev/null; then
  echo Install brew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

source $HOME/.zshrc
source $HOME/.zprofile

echo Installing dependencies
b bundle

echo Updating dependencies
bu
b cleanup -s

