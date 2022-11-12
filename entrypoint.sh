#!/bin/sh

docker login -u $1 -p $2 &&
docker build $3 --file $4 --tag $5/$6:$7 &&
docker push $5/$6:$7
