```
helm repo add karpenter https://charts.karpenter.sh/
```

```
helm repo update
```

```
CLUSTER_NAME="prodEKS"
CLUSTER_ENDPOINT="$(aws eks describe-cluster --name ${CLUSTER_NAME} --query "cluster.endpoint" --output text)"

helm install --namespace karpenter --create-namespace \
  karpenter karpenter/karpenter \
  --set clusterName=${CLUSTER_NAME} \
  --set clusterEndpoint=${CLUSTER_ENDPOINT} \
  --set aws.defaultInstanceProfile=KarpenterNodeInstanceProfile-${CLUSTER_NAME} \
  --wait
```