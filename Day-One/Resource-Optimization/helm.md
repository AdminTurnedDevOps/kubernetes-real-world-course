```
helm repo add sosivio https://helm.sosiv.io
```

```
helm install -n sosivio \
sosivio sosivio/sosivio \
--set platform=eks \
--create-namespace
```