#!/bin/bash

set -e
set -x

# libgmp-dev makes M2Crypto happy

sudo apt-get install gcc python-dev python-pip libssl-dev swig libfuzzy-dev libgmp-dev python-socksipy

# For some reason, swig doesn't fing the openssl headers

pushd /usr/include/openssl/
sudo ln -s ../x86_64-linux-gnu/openssl/opensslconf.h .
popd

pip install -r requirements.txt
