# GitOps
GitOps
## install ArgoCD in local Kubernetes 
```
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```
## get argocd pods
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/23d6863a-96fe-43ec-8859-5596329bd6f5)

## get SVC in k8s
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/23c7311a-4c0c-47c3-a125-ab75d4910abb)

## to access argocd  from ui , need edit service to forward 
```
kubectl port-forward -n argocd svc/argocd-server 8080:443
```

to get password from secrets 

to configure argocd for project 
