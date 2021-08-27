# helm3

# Commands
```bash
#install
sudo snap install helm --classic
helm version

#commands
helm repo add stable https://charts.helm.sh/stable
helm repo list
helm search repo stable | grep -v DEPRECATED
helm search repo stable | wc -l #count
helm env #show variables environment of helm


```
