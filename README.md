btc-box
=======

Collection of Docker containers that work together to form a bitcoin development environment.

Currently, that consists of:

* bitcoind container
* elasticsearch container
* logstash container
* kibana container

Next up:

* insight.is container

### Installation

On a brand new Ubuntu 14.04 x64 box, run the following commands:

```
apt-get install -y git
git clone https://github.com/alexbain/btc-box/
cd btc-box
./provision.sh
```

When this is complete, open a web browser to your server's address to see a Kibana dashboard describing the state of the box.

More to come.
