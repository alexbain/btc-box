## Repository of Bitcoin experiments

Repository of various bitcoin experiments. Currently:

* Spins up Ubuntu 14.04 LTS box
* Installs docker, sets up a ``bitcoind`` container

Next up (potential):

* Setup torrent container to automate downloading of full blockchain (?)
* Setup nodejs development environment (w/ nginx) using bitcore library (?)
* Setup angular front end app to facilitate some real time blockchain analysis (?)


#### Setting up development environment

* Install [Vagrant](http://www.vagrantup.com/) v1.6.1 on host machine
* Run ``start`` from command line


#### Notes:

* The bitcoind rpc password is stored in the config file - fine for development, don't use it in production.
* To rebuild development environment, run ``rebuild``
* To shut down, run ``stop``
