#!/bin/bash

nodemon --help
if [[ $? -eq 0 ]]
then
    clear;
    nodemon -e conf -x "./down.sh && ./up.sh && ./logs.sh";
else
    echo "Nodemon not found";
    echo 'Install nodemon with "yarn global add nodemon" or "npm install -g nodemon"';
fi