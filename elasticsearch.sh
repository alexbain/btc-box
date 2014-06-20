DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir elasticsearch/data
docker build -t elasticsearch elasticsearch/
docker stop elasticsearch
docker rm elasticsearch
docker run -d -v $DIR/elasticsearch/data:/data/ --name elasticsearch elasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
