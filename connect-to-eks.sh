EKS_CLUSTER=prodEKS

aws eks update-kubeconfig --region us-east-1 --name $EKS_CLUSTER --profile default