DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t bitcoind bitcoind
docker stop bitcoind
docker rm bitcoind
docker run -d --name bitcoind -p 8333:8333 -p 8332:8332 -v $DIR/bitcoind:/bitcoind --volumes-from bitcoindData -t bitcoind bitcoind -conf=/bitcoind/bitcoind.conf -datadir=/bitcoind-data
