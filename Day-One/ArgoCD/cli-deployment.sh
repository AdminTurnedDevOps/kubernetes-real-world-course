## App Deployment

`kubectl get secret -n argocd argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d`

`argocd login a76accd27553f4c6f91de9ec6b8d1de3-1063326836.us-east-1.elb.amazonaws.com:80`

`argocd app create sockshopapp --repo https://github.com/microservices-demo/microservices-demo.git --path deploy/kubernetes/manifests --dest-server https://kubernetes.default.svc --dest-namespace sock-shop`

