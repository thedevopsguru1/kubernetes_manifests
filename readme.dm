## Autoscaler link
https://spacelift.io/blog/kubernetes-hpa-horizontal-pod-autoscaler

### autoscaler stress test
```
kubectl run -it --rm load-test --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://my-app-service; done"
```
#### The defauklt scaledown time for eaxch pod is 300 seconds.
#### If you want to change the behavior to scaleup or down
```
behavior:
  scaleDown:
    stabilizationWindowSeconds: 300
  scaleUp:
    stabilizationWindowSeconds: 0
```
Affinitty and anty 
https://www.densify.com/kubernetes-autoscaling/kubernetes-affinity/
https://behdadk.medium.com/kubernetes-taints-and-tolerations-and-node-affinity-7e4f92689ee6

Taint
https://behdadk.medium.com/kubernetes-taints-and-tolerations-and-node-affinity-7e4f92689ee6