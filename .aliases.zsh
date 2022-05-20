# general 
alias c='clear'
alias l='ls -lrt'
alias ll='ls -lah'

# python 
alias python=python3
alias py=python
alias pip=pip3

# kubectl
alias k='kubectl'
alias kc='k config view --minify | grep name'
alias kga='k get pod -A'
alias kgn='k get pod -n'
alias kgaa='k get all --show-labels'

# kube fzf
alias klog='tailpod -a'
alias klogj='tailpod -aj'
alias kdp='describepod -a'

# kubectx
alias ctx='kubectx'
