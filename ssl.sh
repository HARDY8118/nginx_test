#!/bin/bash

export key_size=2048
export days=10
export file_name=self

function generateSSLCertificate {
    echo "Creating a self signed certificate of ${key_size} bits valid for ${days} days";
    openssl req -x509 -days ${days} -nodes -newkey rsa:${key_size} -keyout ${PWD}/nginx/ssl/${file_name}.key -out ${PWD}/nginx/ssl/${file_name}.crt
}

if [[ $1 == "ssl" ]]; then
    generateSSLCertificate
fi