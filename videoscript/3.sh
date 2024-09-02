clear

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

echo "Command: cd .."
cd ..

echo " "
echo "Command: pwd"
pwd

echo " "
echo "Command: cat docker-compose.yml | head -n 30"
cat docker-compose.yml | head -n 30

echo " "
echo "Command: docker compose up --build --detach"
docker compose up --build --detach

echo " "
echo " "
echo "Command: docker images"
docker images

echo " "
echo "Command: docker ps -a"
docker ps -a

echo " "
echo "- Docker compose, when ran with the build flag will build the container images which are configured with a Dockerfile"
