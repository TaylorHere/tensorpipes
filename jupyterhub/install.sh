# Suggested values: advanced users of Kubernetes and Helm should feel
# free to use different values.
RELEASE=tensorhub
NAMESPACE=tensorhub

helm upgrade --install $RELEASE jupyterhub \
  --namespace $NAMESPACE  \
  --version=0.8.2 \
  --values config.yaml

kubectl create namespace $NAMESPACE
kubectl apply -n $NAMESPACE -f argo-install.yaml
