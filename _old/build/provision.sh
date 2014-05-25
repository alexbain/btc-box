sudo apt-get update
sudo apt-get install docker.io -y
sudo ln -sf /usr/bin/docker.io /usr/local/bin/docker

sudo docker build -t bitcoind /vagrant/bitcoind/
sudo docker run -i -v /vagrant/bitcoind:/bitcoind -t bitcoind
