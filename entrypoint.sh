#!/bin/sh

if [[ $1 != "" && $2 != "" ]] 
then
    docker login -u $1 -p $2

    if [[ $3 != "" && $4 != "" && $5 != "" && $6 != "" && $7 != "" ]]
    then
        docker build $3 --file $4 --tag $5/$6:$7 &&
        docker push $5/$6:$7
    else
        echo "Missing arguments, skipping..."
        exit 1
    fi
else
  echo "No credentials provided, skipping..."
  exit 1
fi
