# collectd is used to gather system load, memory utilization, disk space, network traffic, and more
apt-get install -y collectd

# use the config file included by this repository
cp collectd/collectd.conf /etc/collectd/collectd.conf

# restart with new config file
service collectd restart
