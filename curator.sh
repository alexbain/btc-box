docker build -t curator curator/
docker stop curator
docker rm curator
docker run --name curator --link elasticsearch:elasticsearch curator curator --host elasticsearch -b 2 -d 14
