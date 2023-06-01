# Deploying Go Application in Kubernetes using Argo CD
This repository demonstrates an example of deploying a Go application in Kubernetes using Argo CD, a declarative continuous delivery tool. Argo CD automates the synchronization of your Kubernetes cluster with the desired state defined in a Git repository, ensuring a reliable and automated deployment process.

## Prerequisites
Before deploying the Go application, ensure you have the following prerequisites:

- Kubernetes cluster up and running
- Argo CD installed in your Kubernetes cluster

## Getting Started
To get started with deploying the Go application using Argo CD, follow these steps:

1- Clone this repository:
```
git clone https://github.com/mahmoudmohamed22/GitOps.git
```
2- Modify the Kubernetes manifests:

Navigate to the Deployment-App directory.
Update the deployment.yaml, service.yaml files with your specific application configurations.

3- Configure Argo CD:

Ensure Argo CD is configured and accessible in your Kubernetes cluster.
Update the `application.yaml` file with the correct application and repository details.

4- Push changes to your repository:

Commit and push the modified Kubernetes manifests and the updated `application.yaml` file to your repository.

5- Access the Argo CD UI:
  - Open the Argo CD UI in your web browser.
  - Log in using the appropriate credentials.
  - Create an application in Argo CD, specifying the repository and target cluster details.
  - Argo CD will automatically detect the changes and begin deploying the Go application to the Kubernetes cluster.

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

### to get password from secrets and then decode with base64 to solve hashing password to right password
```
kubectl get secret  argocd-initial-admin-secret -n argocd -o yaml
```

## To run Argocd Config "application.yaml" to run app and sync app from git 
```
kubectl apply -f application.yaml
```
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/94f4375f-9c52-4a34-ab0a-1ad47b9b4646)


## ArgoCd 
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/87c84ba9-772d-42a3-bb77-8be200fe44f6)


## ArgoCd To Maange App in k8s and montiring Status app
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/4d28e122-d567-4e91-9133-e2bb9156e23c)

## test automatic sync
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/4a3a031c-67e7-43d0-ad23-a54f82571296)

## Update Deployment to Test Prune Sync

![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/d558e0c6-8aa8-4663-954d-c97aa5dc90db)
![image](https://github.com/mahmoudmohamed22/GitOps/assets/47304558/ea865146-98c4-4bc6-83c5-0f19de98b689)

## Contributing
Contributions to this repository are welcome! If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## Acknowledgements
This project is inspired by the GitOps methodology and leverages the power of Argo CD for automated deployment in Kubernetes.


