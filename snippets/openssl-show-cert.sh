openssl x509 -text -in cert.pem

openssl x509 -inform der -text -in cert.der

# show smtp cert
openssl s_client -connect smtp.example.com:25 -starttls smtp
