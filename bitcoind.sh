DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir bitcoind/data
docker build -t bitcoind bitcoind
docker stop bitcoind
docker rm bitcoind
docker run -d -i --name bitcoind -v $DIR/bitcoind:/bitcoind -t bitcoind
