DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker stop kibana
docker rm kibana
docker run -v $DIR/kibana:/kibana --name kibana busybox true
