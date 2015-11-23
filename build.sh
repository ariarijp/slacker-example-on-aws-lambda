#!/bin/bash

if [ ! -d build ]; then echo "Create build directory."; mkdir build; fi
if [ ! -d tmp ]; then echo "Create tmp directory."; mkdir tmp; fi

echo "Remove old artifacts."
rm -rf ./build/*
rm -rf ./tmp/*

echo "Copy main script and site-packages to tmp directory."
cp -R lambda_function.py tmp/
cp -R .venv/lib/python2.7/site-packages/* tmp/

echo "Create a deployment package."
cd ./tmp
zip -q -r ../build/lambda.zip * -x .DS_Store -x \*.pyc

if [ ! -d build ]; then
  echo "Deployment package created."
  exit 0
fi

echo "Deployment package not created. Something went wrong."
exit 1
