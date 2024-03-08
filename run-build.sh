#!/bin/sh -eux
tag="$1"
git clone -b "$tag" https://github.com/lief-project/LIEF.git ./build
cd ./build/api/python
pip install -r build-requirements.txt
pyproject-build -w
cp -a ./dist/*.whl /out
