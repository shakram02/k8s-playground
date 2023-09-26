k3s kubectl proxy
k3s kubectl run nginx-potato-pod --image=nginx:mainline-alpine3.18
k3s kubectl port-forward nginx-potato-pod 4455:80
k3s kubectl -n kubernetes-dashboard create token admin-user

# Pods
k3s kubectl create --filename nginx-pod.yaml
k3s kubectl apply --filename nginx-pod.yaml
k3s kubectl get pod my-nginx-potato --output yaml

# Shows logs, good for debugging
k3s kubectl describe pod my-nginx-potato

k3s kubectl exec my-nginx-potato -it sh