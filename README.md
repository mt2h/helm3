# helm3

## Commands
```bash
#install helm
sudo snap install helm --classic
helm version

#commands for repositories
helm repo add stable https://charts.helm.sh/stable

#install app apache
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install my-apache bitnami/apache --version 7.3.17
helm status my-apache

#install app redis
helm install my-redis bitnami/redis --version 15.0.3
helm status my-redis

#commands search
helm search repo stable | grep -v DEPRECATED #find all repos without  deprecated
helm search repo stable | wc -l #count
helm search hub httpd -o yaml #find in artifact hub
helm search repo apache --version 1.05 #find with version

#commands GET
helm get manifest my-apache #view manifest YAML how to created
helm get notes my-apache #view notes info, this info view when install
helm get values my-apache #params, values, properties
kubectl get all -o name
helm get all my-apache

#commands SHOW
helm show readme bitnami/apache
helm show chart bitnami/apache #info chart
helm show values bitnami/apache #info values defined chart
helm show all bitnami/apache

#other commands
helm repo list
helm env #show variables environment of helm

#commands Remove
helm repo remove elastic

#commands Kubernetes
kubectl get svc --namespace default -w my-apache #w -> watch
kubectl logs my-apache-76c49dd54-dw927
minikube ip
curl http://$(minikube ip):31078
```
