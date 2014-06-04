FROM base
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget nginx-full

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
