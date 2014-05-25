FROM base
RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe multiverse" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y wget openjdk-6-jre
RUN echo "deb http://packages.elasticsearch.org/logstash/1.4/debian stable main" > /etc/apt/sources.list.d/logstash.list
RUN echo "deb http://packages.elasticsearch.org/elasticsearch/1.0/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add - 
RUN apt-get update 
RUN apt-get install logstash curl -y
ADD logstash.conf /logstash/logstash.conf
RUN cat /logstash/logstash.conf
RUN ls /logstash
RUN rm -rf /tmp/*

EXPOSE 514
EXPOSE 9200
EXPOSE 9292
EXPOSE 9300
EXPOSE 25826/udp
