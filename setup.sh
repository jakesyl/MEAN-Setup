sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10

echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list

sudo apt-get update

sudo apt-get install -y mongodb-org



#Get node
git clone git://github.com/ry/node.git #Fetch the rpo
cd node
./configure
make
sudo make install

npm install generator-angular-fullstack #Build the stack

sudo service mongod start

echo "Is this line: [initandlisten] waiting for connections on port <port> here? it should be"

cat /var/log/mongodb/mongod.log

sudo service mongod restart
