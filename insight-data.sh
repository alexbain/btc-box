DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

mkdir insight-db
docker stop insightData
docker rm insightData
docker run -v $DIR/insight-db:/insight/db --name insightData busybox true
