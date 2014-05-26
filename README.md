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

On a brand new Ubuntu 14.04 x64 box (minimum 40GB HDD and 2GB RAM), run the following commands:

```
apt-get install -y git
git clone https://github.com/alexbain/btc-box/
cd btc-box
./provision.sh
```

When this is complete, open a web browser to your server's IP and you'll be able to see realtime analytics of the box displayed via Kibana. Visit port 3000 to explore the blockchain based on a local database using Insight.

More to come.

### Ideas for improvement

* Load up a sensible default dashboard into Kibana upon installation [btc-box-dashboard](https://gist.github.com/alexbain/18f83ac40a1369224173)
* Centralize configuration, allow for ability to use testnet or livenet programatically
* Reverse proxy elasticsearch behind nginx, close port 9200 to outside
* Reverse proxy insight behind nginx, close port 3000 to outside
* Run an nginx container and find way to provide configuration files for each container needing a reverse proxy
* Support Vagrant for local development (use testnet by default)
* CoreOS + etcd + fleet looks like an interesting combination long term - would allow btc-box to scale to multiple instances
* Running ``apt-get update`` on each container slows down build process, consider removing it
* Find a way to automatically restart container when it fails
* Find a way to automatically route logs from containers to logstash
* Ensure that /var/log/* is being logged to logstash
