When deploying, you will need a minimum of two Worker Nodes

1. Download Sosivio
https://www.sosiv.io/app/download

2. Untar the Mac file
```
tar -xvf tar -xvf installer-release-1.5.3-mac.tar.gz
```

3. Run the Sosivio installer
```
./installer-release-1.5.3-mac
```

4. Use k8s port forwarding to log into the dashboard
```
kubectl port-forward -n sosivio svc/dashboard 8088:8088
```

Username: admin
Password: The password will be shown once you install Sosivio

If you need to retrieve the password again after you've cleared the terminal, you can use the following:
```
kubectl get secrets/sosivio-admin-otp -n sosivio --template={{.data.password}} | base64 -D
```