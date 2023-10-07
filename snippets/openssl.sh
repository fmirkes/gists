# gen selfsigned cert
openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout cert.key -out cert.pub -subj /CN=example.com -addext "subjectAltName = DNS:foo.example.com"

# show certs
openssl x509 -text -in cert.pem
openssl x509 -inform der -text -in cert.der

# show smtp cert
openssl s_client -connect smtp.example.com:25 -starttls smtp

# test ssl handshake for https
echo | openssl s_client -showcerts -servername <HOST> -connect <HOST>:443 -debug

# rsa encrypt
openssl rsautl -encrypt -inkey public.pem -pubin -in file -out file.enc

# rsa decrypt
openssl rsautl -decrypt -inkey private.pem -in file.enc > file

# extract certs from pkcs12
openssl pkcs12 -in store.pfx -nocerts -out key.pem
openssl pkcs12 -in store.pfx -clcerts -nokeys -out cert.pem
