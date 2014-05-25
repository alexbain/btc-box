FROM        ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm git wget
RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir /insight
RUN (wget https://github.com/bitpay/insight/archive/v0.1.12.tar.gz && tar zxf v0.1.12.tar.gz && cd insight-* &&  cp -R * /insight)

RUN cd /insight
WORKDIR /insight
VOLUME ["/insight/db"]

RUN npm install

ENV INSIGHT_NETWORK livenet 
ENV INSIGHT_DB /insight/db
ENV BITCOIND_HOST bitcoind
ENV BITCOIND_PORT 8332
ENV BITCOIND_USER bitbot 
ENV BITCOIND_PASS zRTa3jKc2,cyXZkFPzkheM%op 
ENV INSIGHT_PUBLIC_PATH /insight/public

EXPOSE 3000
