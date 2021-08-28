# helm3

# Commands
```bash
#install helm
sudo snap install helm --classic
helm version

#commands for repositories
helm repo add stable https://charts.helm.sh/stable
helm repo list
helm search repo stable | grep -v DEPRECATED #find all repos without  deprecated
helm search repo stable | wc -l #count
helm env #show variables environment of helm
helm search hub httpd -o yaml #find in artifact hub
helm search repo apache --version 1.05 #find with version
helm repo remove elastic

#install app apache
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-apache bitnami/apache --version 7.3.17
kubectl logs my-apache-76c49dd54-dw927
minikube ip
curl http://192.168.10.88:31078

#install app redis
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-redis bitnami/redis --version 15.0.3
kubectl get all -o name
```
