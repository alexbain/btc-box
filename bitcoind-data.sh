DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir bitcoind-data
docker stop bitcoindData
docker rm bitcoindData
docker run -v $DIR/bitcoind-data:/bitcoind-data --name bitcoindData busybox true
