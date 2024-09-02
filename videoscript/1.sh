docker system prune -a --volumes

echo " "
echo " "
echo " "

cd ../create_k8s
terraform destroy -auto-approve

kcgc
kcuc default
kubectl create namespace eightthreedistinction --dry-run=client -o yaml | kubectl apply -f -
kcn eightthreedistinction

cd ../scripts/local-kub
./delete.sh

az login

clear

neofetch --ascii_distro openSUSE

echo " "
echo "Command: kubectl cluster-info"

kubectl cluster-info

echo " "
echo "Command: kubectl get all"

kubectl get all

echo " "
echo "Command: docker ps -a"

docker ps -a

echo " "
echo "Command: docker images"

docker images

echo " "
echo "Command: git remote -v"

git remote -v

echo " "
echo "Command: pwd"

cd ../videoscripts
pwd

echo " "
echo "- Unable to install provided software due to using linux"
echo "- Uni lab work has been done on a server in my garage"
echo "- This recording is of a remote desktop session into that server"
echo "- Terminal currently configured to access local kuberneties install in namespace eightthreedistinction"
echo "- Docker contains no pre-existing images or containers"
echo "- All code is on my GitHub, including the scripts used during this video"
