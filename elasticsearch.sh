DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir elasticsearch/data
docker build -t elasticsearch elasticsearch/
docker stop elasticsearch
docker rm elasticsearch
docker run -d -p 9200:9200 -p 9300:9300 -v $DIR/elasticsearch/data:/data/ --name elasticsearch elasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
