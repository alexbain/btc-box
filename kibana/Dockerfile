FROM base
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget nginx-full

# Fetch and setup kibana app
RUN (cd /tmp && wget --no-check-certificate http://download.elasticsearch.org/kibana/kibana/kibana-latest.tar.gz -O pkg.tar.gz && tar zxf pkg.tar.gz && cd kibana-* && cp -rf ./* /usr/share/nginx/www/)

ADD config.js /usr/share/nginx/www/config.js

# Default config for now
ADD nginx.conf /etc/nginx/nginx.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN rm -rf /tmp/*

EXPOSE 80
