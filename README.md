# helm-repos
Jon's Helm Chart repo used for Pure Storage Demos
```
helm repo add jon https://raw.githubusercontent.com/2vcps/helm-repos/master/
helm repo update
```
## Charts
gb-chart - this chart is a slight refactoring of the guestbook demo borrowed from the k8s examples.
```
helm install -n <namespace> jon/gb-chart -f values.yaml
```
You values.yaml file requires one setting right now.
```
persistence:
   storageClass: pure-block
```
If you want to use node selectors for failure domains with the Pure Service Orchestrator labels feature you should add this to the values.yaml
```
zones:
  enabled: true
  zoneName: <zonename>
```