apt-get update
apt-get upgrade

curl -s https://get.docker.io/ubuntu/ | sudo sh

./swap.sh
./provision-collectd.sh

./bitcoind.sh
./elasticsearch.sh
./logstash.sh
./kibana.sh
