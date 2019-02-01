echo "Clean some mess up"
helm delete --purge $(helm list --namespace demo1 -q)
helm delete --purge $(helm list --namespace demo2 -q)
helm delete --purge $(helm list --namespace demo3 -q)
helm delete --purge pso
echo "all clean"