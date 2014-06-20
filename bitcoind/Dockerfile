FROM        ubuntu:14.04

# Necessary dependencies
RUN         apt-get update
RUN         apt-get install -y software-properties-common python-software-properties


# Bitcoin and BerkeleyDB 4.8
RUN         add-apt-repository -y ppa:bitcoin/bitcoin
RUN         apt-get update
RUN         apt-get install -y bitcoind
RUN         apt-get install -y db4.8

# expose RPC port, port to connect to servers
EXPOSE      8332 
EXPOSE      8333

# start up bitcoin server
# CMD         ["bitcoind", "-conf=/bitcoind/bitcoind.conf", "-datadir=/bitcoind/data"]
