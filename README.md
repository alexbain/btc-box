btc-box
=======

Collection of Docker containers that work together to form a bitcoin development environment.

Currently, that consists of:

* bitcoind - runs full bitcoin-qt core, exposes json-rpc port
* elasticsearch - analyze all logs all services and box is producing
* logstash - aggregator of logs
* kibana - UI on top of logs, available at port 80
* insight - RESTful API on top of bitcoind w/ UI to explore blockchain, available at port

### Installation

On a brand new Ubuntu 14.04 x64 box, run the following commands:

```
apt-get install -y git
git clone https://github.com/alexbain/btc-box/
cd btc-box
./provision.sh
```

When this is complete, open a web browser to your server's IP and you'll be able to see realtime analytics of the box. Visit port 3000 to explore the blockchain based on a local database.

More to come.
