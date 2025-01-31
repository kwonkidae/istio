kubectl create namespace istioinaction
kubectl config set-context $(kubectl config current-context) --namespace=istioinaction

kubectl run -i -n default --rm --restart=Never dummy --image=curlimages/curl --command -- sh -c 'curl -s http://webapp.istioinaction/api/catalog/items/1'


while true; do curl http://localhost/api/catalog; sleep 0.5; done
curl http://localhost/api/catalog -H "x-dark-launch: v2"