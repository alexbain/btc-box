DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t logstash logstash/
docker stop logstash
docker rm logstash
docker run -d -v $DIR/logstash/logs/:/var/log/logstash/ --volumes-from bitcoindData -p 25826:25826/udp --link elasticsearch:elasticsearch --name logstash logstash /opt/logstash/bin/logstash -f /logstash/logstash.conf --log /var/log/logstash/logstash.log -v
