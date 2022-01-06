# encrypt
openssl rsautl -encrypt -inkey public.pem -pubin -in file -out file.enc

# decrypt
openssl rsautl -decrypt -inkey private.pem -in file.enc > file
