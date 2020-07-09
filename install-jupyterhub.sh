RELEASE=jhub
NAMESPACE=tensorpipes

helm upgrade --install $RELEASE jupyterhub \
  --namespace $NAMESPACE  \
  --version=0.9.0 \
  --values config.yaml
