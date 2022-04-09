#!/bin/bash

# sets multiple configs for kubectl
# If there`s already a kubeconfig file in ~/.kube/config it will import that too and all the contexts
unset KUBECONFIG
DEFAULT_KUBECONFIG_FILES="$HOME/.kube/config"
test -f "${DEFAULT_KUBECONFIG_FILES}" && export KUBECONFIG="$DEFAULT_KUBECONFIG_FILE"

# Your additional kubeconfig files should be inside ~/.kube/config-files
ADD_KUBECONFIG_FILES="$HOME/.kube/config-files"
mkdir -p "${ADD_KUBECONFIG_FILES}"
OIFS="$IFS"
IFS=$'\n'
for kubeconfigFile in `find "${ADD_KUBECONFIG_FILES}" -type f -name "*.yml" -o -name "*.yaml"`
do
    export KUBECONFIG="$kubeconfigFile:$KUBECONFIG"
done
IFS="$OIFS"

# add autocompletion for kubectl
# if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi


