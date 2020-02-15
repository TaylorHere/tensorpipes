FROM jupyter/tensorflow-notebook
USER root
ADD ./kubectl /usr/local/bin/kubectl
ADD ./argo-linux-amd64 /usr/local/bin/argo
ADD ./kube_config $HOME/.kube/config
