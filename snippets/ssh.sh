# connect without hostkey verfication
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no

# generate eliptic curve key
ssh-keygen -t ed25519 -C "foo@example.com"
