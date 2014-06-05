apt-get update
apt-get upgrade

curl -s https://get.docker.io/ubuntu/ | sudo sh

./swap.sh
./insight-data.sh
./insight.sh

echo "All set!"
