## File change config maps:
You'll need 2 shells

In the first shell run:
```bash
kubectl apply -f init.config.yml    # To initialize the config map
k3s kubectl apply -f monitor-config.pod.yml # Run the pod
k3s kubectl logs config-map-app-pod-using-filesystem -f # Show pod logs
```

In the second shell:

Change the config map value and then run
```bash
k3s kubectl apply -f init.config.yml    # You might need to wait about 1-2 minutes before the changes are propagated.
```

After that you'll see the first shell logs and prints the changed value in the config map.


### Cleanup
```bash
k3s kubectl delete -f monitor-config.pod.yml 
k3s kubectl delete -f init.config.yml
```
