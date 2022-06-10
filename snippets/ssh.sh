# connect without hostkey verfication
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no <REMOTE_HOST>

# generate eliptic curve key
ssh-keygen -t ed25519 -C "foo@example.com"

# port forwarding
ssh -R <REMOTE_PORT>:<LOCAL_ADDRESS>:<LOCAL_PORT> <REMOTE_HOST>

# socks proxy
ssh -D <PROXY_PORT> -C -N <REMOTE_HOST>
