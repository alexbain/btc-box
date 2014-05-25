docker build -t kibana kibana/
docker stop kibana
docker rm kibana
docker run -d -p 80:80 --link elasticsearch:elasticsearch --name kibana kibana nginx -c /etc/nginx/nginx.conf
