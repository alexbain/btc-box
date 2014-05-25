DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir insight/db
docker build -t insight insight
docker stop insight
docker rm insight
docker run -d -p 3000:3000 --name insight -v $DIR/insight/db:/insight/db --link bitcoind:bitcoind insight npm start
