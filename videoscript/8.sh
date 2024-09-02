clear

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

echo " "
echo "Command: az aks get-credentials --resource-group eightthreedistinction --name eightthreedistinction --file /tmp/eightthreedistinction.txt"
az aks get-credentials --resource-group eightthreedistinction --name eightthreedistinction --file /tmp/eightthreedistinction.txt

echo " "
echo "Command: az acr credential show -n eightthreedistinction"
az acr credential show -n eightthreedistinction

echo " "
echo "SECRET: KUBE_CONFIG"
echo "Command: cat eightthreedistinction | base64"
cat /tmp/eightthreedistinction.txt | base64

echo " "
echo "SECRET: REGISTRY_UN"
echo "Command: az acr credential show -n eightthreedistinction | jq .username"
az acr credential show -n eightthreedistinction | jq .username

echo " "
echo "SECRET: REGISTRY_PW"
echo "Command: az acr credential show -n eightthreedistinction | jq '.passwords | first | .value'"
az acr credential show -n eightthreedistinction | jq '.passwords | first | .value'

echo " "
echo "SECRET: CONTAINER_REGISTRY"
echo "Command: echo 'eightthreedistinction.azurecr.io'"
echo 'eightthreedistinction.azurecr.io'

echo " "
echo "- Extracted the K8s credentials from the local machine and base64 encoded them"
echo "- Got the ACR username and password"
echo " "
echo "- Add variables into repo secrets in Github"
echo "- Dispatch each workflow manually"
