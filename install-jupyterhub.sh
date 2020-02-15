# Suggested values: advanced users of Kubernetes and Helm should feel
# free to use different values.
RELEASE=tensorpipes-jupyterhub
NAMESPACE=tensorpipes

helm upgrade --install $RELEASE jupyterhub \
  --namespace $NAMESPACE  \
  --version=0.8.2 \
  --values config.yaml
