apt-get update
apt-get upgrade

curl -s https://get.docker.io/ubuntu/ | sudo sh

./swap.sh

git clone git://github.com/alexbain/bitcoin-experiments 

./bitcoind.sh
./kibana.sh
./logstash.sh
