openssl req -x509 -nodes -days 3650 -newkey rsa:2048 -keyout cert.key -out cert.pub -subj /CN=example.com -addext "subjectAltName=foo.example.com"
