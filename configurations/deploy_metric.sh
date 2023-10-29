kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

# kubectl autoscale deployment api-feed --cpu-percent=50 --min=2 --max=5
# kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://feed; done"
# kubectl get hpa api-feed --watch
# kubectl get deployment api-feed
# kubectl get hpa api-feed --watch
# kubectl get deployment api-feed