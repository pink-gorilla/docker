# docker

```
usermod -aG sudo deas
curl -sfL https://get.k3s.io | sh -

kubectl get pod
kubectl run --image=nginx nginx-app --port=80 --env="DOMAIN=cluster"
kubectl delete deployment nginx-app


```

