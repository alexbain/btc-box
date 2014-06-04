docker build -t nginx1 nginx/
docker stop nginx
docker rm nginx
docker run -d -p 80:80 --link elasticsearch:elasticsearch --volumes-from kibana --name nginx nginx1 nginx -c /etc/nginx/nginx.conf
