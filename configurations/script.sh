kubectl delete --all deployments
kubectl delete --all services

# Apply aws-secrets
kubectl apply -f aws-secret.yaml
kubectl apply -f env-secret.yaml
kubectl apply -f env-configmap.yaml
# Aplly deployment
kubectl apply -f feed-deployment.yaml
kubectl apply -f user-deployment.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f reverseproxy-deployment.yaml

kubectl apply -f feed-service.yaml
kubectl apply -f user-service.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f reverseproxy-service.yaml


kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy

kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend

kubectl set image deployment frontend frontend=tunv1712/udagram-frontend:v9 

kubectl rollout restart deployment/api-feed          

kubectl get deployments 

aws eks update-kubeconfig --region us-east-1 --name tunv1712-cluster

