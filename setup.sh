#!/bin/bash


# Install oh-my-zsh

if [ -d "$ZSH" ]; then
  cd $ZSH
  git checkout master && git pull
else
  wget "https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh"
  sh install.sh --unattended --keep-zshrc

  rm install.sh
fi

# Install powerlevel10k

POWERLEVEL10K_PATH=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

if [ -d "$POWERLEVEL10K_PATH" ]; then
  cd $POWERLEVEL10K_PATH
  git checkout master && git pull
else
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $POWERLEVEL10K_PATH
fi

# Install fzf

if [ -d "$HOME/.fzf" ]; then
  cd $HOME/.fzf
  git checkout master && git pull
else
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
  $HOME/.fzf/install --key-bindings --no-completion --no-update-rc
fi
