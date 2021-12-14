openssl pkcs12 -in store.pfx -nocerts -out key.pem

openssl pkcs12 -in store.pfx -clcerts -nokeys -out cert.pem
