# test ssl handshake for https
echo | openssl s_client -showcerts -servername <HOST> -connect <HOST>:443 -debug
