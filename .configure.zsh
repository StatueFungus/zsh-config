# add common aliases
[[ ! -f ~/zsh-config/.aliases.zsh ]] || source ~/zsh-config/.aliases.zsh

# source prompt
[[ ! -f ~/zsh-config/.p10k.zsh ]] || source ~/zsh-config/.p10k.zsh

# configure fzf
[[ ! -f ~/zsh-config/.configure-fzf.zsh ]] || source ~/zsh-config/.configure-fzf.zsh

# configure docker
[[ ! -f ~/zsh-config/.configure-docker.zsh ]] || source ~/zsh-config/.configure-docker.zsh

# configure kubectl
[[ ! -f ~/zsh-config/.configure-kubectl.sh ]] || ~/zsh-config/.configure-kubectl.sh

