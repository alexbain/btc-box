DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
mkdir insight/db
docker build -t insight insight
docker stop insight
docker rm insight
docker run -p 3001:3001 --name insight --link bitcoind:bitcoind insight npm start
