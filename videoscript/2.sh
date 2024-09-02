clear

echo " "
echo " "
echo " "
echo " "
echo " "
echo " "

echo "Command: cd metadata"
cd ../metadata

echo " "
echo "Command: pwd"
pwd

echo " "
echo "Command: npm install"
npm install

echo " "
echo "Command: export PORT=3000"
export PORT=3000

echo " "
echo "Command: npm run start"
npm run start

echo " "
echo "Command: npm test"
npm test

echo "- npm install downloads all the required node.js librarys"
echo "- we set PORT to 3000 which is what the web server will listen on"
echo "- this app has depdencys on a database and rabbitMQ so we cant run it in isolation"
