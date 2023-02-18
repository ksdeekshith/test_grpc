#!/bin/bash
echo $1
python3.9 -m pip install --upgrade pip
python3.9 -m pip install -U wheel setuptools
yum install -y openssl openssl-devel python3-devel
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
python3.9 -m pip install --only-binary :all grpcio==$1
