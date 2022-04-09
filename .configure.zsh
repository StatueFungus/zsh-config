# configure oh-my-zsh. should be the first to enable instant promt
[[ ! -f ~/zsh-config/.configure-oh-my-zsh.zsh ]] || source ~/zsh-config/.configure-oh-my-zsh.zsh

# add common aliases
[[ ! -f ~/zsh-config/.aliases.zsh ]] || source ~/zsh-config/.aliases.zsh

# source prompt
[[ ! -f ~/zsh-config/.p10k.zsh ]] || source ~/zsh-config/.p10k.zsh

# configure fzf
[[ ! -f ~/zsh-config/.configure-fzf.zsh ]] || source ~/zsh-config/.configure-fzf.zsh

# configure docker
[[ ! -f ~/zsh-config/.configure-docker.zsh ]] || source ~/zsh-config/.configure-docker.zsh

# configure kubectl
[[ ! -f ~/zsh-config/.configure-kubectl.sh ]] || source ~/zsh-config/.configure-kubectl.sh

