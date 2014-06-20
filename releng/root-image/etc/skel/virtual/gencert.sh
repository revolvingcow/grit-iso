#!/bin/bash

# Create a CA self signed certificate
openssl req -new -x509 -days 365 -extensions v3_ca -keyout ca_key_private.pem -out ca_cert.pem

# Generate a server private key and a request for signing
openssl genrsa -out server_key_private.pem
openssl req -new -key server_key_private.pem -out server_req.pem

# Generate the server certificate
openssl x509 -req -days 365 -in server_req.pem -CA ca_cert.pem -CAkey ca_key_private.pem -set_serial 01 -out server_cert.pm
