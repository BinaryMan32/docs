# Local Volumes by Node

Get all physical volumes in the cluster, sorted by node, and filter to only show `local-path` volumes.

These volumes would be inaccessible if the corresponding node is down.

```sh
kubectl get pv \
  --sort-by='.spec.nodeAffinity.required.nodeSelectorTerms[0].matchExpressions[0].values[0]' \
  -o custom-columns='NAME:.metadata.name,STORAGECLASS:.spec.storageClassName,NODE:.spec.nodeAffinity.required.nodeSelectorTerms[0].matchExpressions[0].values[0],NAMESPACE:.spec.claimRef.namespace,CLAIM:.spec.claimRef.name,SIZE:.spec.capacity.storage,STATUS:.status.phase' \
  | awk 'NR==1 || $2=="local-path"'
```
