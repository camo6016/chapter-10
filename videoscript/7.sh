clear

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

echo " "
echo "Command: kubectl get all"
kubectl get all

echo "Command: cd ../scripts/cd"
cd ../scripts/cd

echo " "
echo "Command: cat infrastructure.sh"
cat infrastructure.sh

echo " "
echo "Command: ../scripts/cd/infrastructure.sh"
./infrastructure.sh

echo " "
echo "Command: sleep 5"
sleep 5

echo " "
echo "Command: kubectl get all"
kubectl get all

echo " "
echo "- Deploying database and message que"
