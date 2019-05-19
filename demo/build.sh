#!/bin/sh
rm -rf demo
docker run -u `id -u` -v `pwd`:/app trion/ng-cli ng new demo
cd demo
docker run -u `id -u` -v `pwd`:/app trion/ng-cli ng build --prod
cp ../Dockerfile.template Dockerfile
cp ../.dockerignore .
docker build -t angular-demo .
cd ..
