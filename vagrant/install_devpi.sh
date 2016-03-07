#!/bin/bash

mkdir -p ~/devpi-tests/
virtualenv -p python2.7 ~/devpi-tests/venv2
~/devpi-tests/venv2/bin/pip install devpi-server devpi-web devpi-client

mkdir -p ~/mirror/
~/devpi-tests/venv2/bin/devpi-server --start --serverdir ~/mirror/ --host=0.0.0.0
~/devpi-tests/venv2/bin/devpi use http://localhost:3141

~/devpi-tests/venv2/bin/devpi user -c vagrant password=test
~/devpi-tests/venv2/bin/devpi login vagrant --password=test
~/devpi-tests/venv2/bin/devpi index -c mirror
