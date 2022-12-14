#!/bin/sh

if [[ $1 != ""  && $2 != "" ]]
then
    if [[ $3 != "" && $4 != "" && $5 != "" && $6 != "" && $7 != "" $8 ]]
    then
        docker login -u $1 -p $2 
        docker build $3 --file $4 --tag $5/$6:$7 
        docker push $5/$6:$7
    elif  [[ $3 != "" && $4 != "" && $5 != "" && $6 != "" && $7 != "" && $8 != "" ]]
    then
        docker login -u $1 -p $2 $8
        docker build $3 --file $4 --tag $8/$5/$6:$7 
        docker push $8/$5/$6:$7
    else
        echo "Missing arguments, skipping..."
        exit 1
    fi
else
    echo "No credentials provided, skipping..."
    exit 1
fi