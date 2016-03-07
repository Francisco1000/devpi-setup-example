#!/bin/bash

~/devpi-tests/venv2/bin/pip install devpi-builder wheel devpi-client

source ~/devpi-tests/venv2/bin/activate
devpi-builder /project/requirements.txt http://localhost:3141/vagrant/mirror vagrant test
deactivate
