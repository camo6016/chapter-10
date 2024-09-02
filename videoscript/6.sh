clear

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

echo " "
echo "Command: az aks get-credentials --resource-group eightthreedistinction --name eightthreedistinction"
az aks get-credentials --resource-group eightthreedistinction --name eightthreedistinction

echo " "
echo "Command: kubectl cluster-info"
kubectl cluster-info

echo " "
echo "Command: kubectl get all"
kubectl get all

echo " "
echo "Command: az acr login --name eightthreedistinction"
az acr login --name eightthreedistinction

echo " "
echo "Command: export CONTAINER_REGISTRY=eightthreedistinction.azurecr.io"
export CONTAINER_REGISTRY=eightthreedistinction.azurecr.io

echo "Command: cd ../scripts/production-kub"
cd ../scripts/production-kub

echo " "
echo "Command: cat deploy.sh"
cat deploy.sh

echo " "
echo "Command: ./deploy.sh"
./deploy.sh

echo " "
echo "Command: sleep 5"
sleep 5

echo " "
echo "Command: kubectl get all"
kubectl get all

echo " "
echo "Command: sleep 5"
sleep 5

echo " "
echo "Command: kubectl get all"
kubectl get all

echo " "
echo "Command: ./delete.sh"
./delete.sh

echo " "
echo "- Load config for Azure K8s cluster using az ask get-credentials command"
echo "- We login to the image registry which will allow us to push docker images"
echo "- Set environment variable because its used in the deploy.sh script"
echo "- Deploy.sh script builds image, pushes them to ACR and then deploys the manifests"
