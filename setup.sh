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

# Install zsh-autosuggestions

AUTOSUGGESTIONS_PATH=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [ -d "$AUTOSUGGESTIONS_PATH" ]; then
  cd $AUTOSUGGESTIONS_PATH
  git checkout master && git pull
else
  git clone https://github.com/zsh-users/zsh-autosuggestions $AUTOSUGGESTIONS_PATH
fi


# Install fzf

if [ -d "$HOME/.fzf" ]; then
  cd $HOME/.fzf
  git checkout master && git pull
else
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
  $HOME/.fzf/install --key-bindings --no-completion --no-update-rc
fi

# Install kube-fzf & kubectx

if [ -d "$HOME/.kube-fzf" ]; then
  cd $HOME/.kube-fzf
  git checkout master && git pull
else
  git clone git@github.com:StatueFungus/kube-fzf.git $HOME/.kube-fzf
fi


if [ -d "$HOME/.kube-ctx" ]; then
  cd $HOME/.kube-ctx
  git checkout master && git pull
else
  git clone https://github.com/ahmetb/kubectx $HOME/.kube-ctx
fi

# we have to configure it here, because it will create symbolic links that require sudo
[[ ! -f ~/zsh-config/.configure-kube-fzf.sh ]] || source ~/zsh-config/.configure-kube-fzf.sh
[[ ! -f ~/zsh-config/.configure-kube-ctx.sh ]] || source ~/zsh-config/.configure-kube-ctx.sh
