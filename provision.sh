apt-get update
apt-get upgrade

curl -s https://get.docker.io/ubuntu/ | sudo sh

./swap.sh

./bitcoind-data.sh
./bitcoind.sh
./elasticsearch.sh
./logstash.sh
./kibana.sh
./nginx.sh
# ./insight.sh

./provision-collectd.sh

echo "All set!"
