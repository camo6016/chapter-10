clear

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

echo "Command: cd ../scripts/local-kub"
cd ../scripts/local-kub

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
echo "- The deploy script builds the image, pushes them to K3s and then deploys the manifests"
echo "- Go to / on the gateway service to load website" 
