This is example of how to run your own devpi server with builds for packages in py2 and py3

1. Install vagrant
1. Do ```vagrant up```, ignore errors and wait cause it's going to take a while
1. Go to [http://192.192.1.2:3141/](http://192.192.1.2:3141/)

All of the steps are in order in files:

1. vagrant/provision.sh
1. vagrant/install_devpi.sh
1. vagrant/devpi_build_py2.sh
1. vagrant/devpi_build_py3.sh

For more info read [this blogpost](http://afterdesign.net/2016/01/24/wheel-mirror-with-devpi-server.html)
