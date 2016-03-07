#!/bin/bash

virtualenv -p python3.4 ~/devpi-tests/venv3

~/devpi-tests/venv3/bin/pip install devpi-builder wheel devpi-client

source ~/devpi-tests/venv3/bin/activate
~/devpi-tests/venv3/bin/devpi-builder /project/requirements.txt http://localhost:3141/vagrant/mirror vagrant test
deactivate
