# show gpg key id of file
gpg --dry-run --import -v 'pub.gpg'

# gen keypair
gpg --full-generate-key

# export pub key
gpg --export -a '<UID>' > 'pub.gpg' 

# export private key
gpg --export-secret-keys -a '<UID>' > 'key.gpg'

# import private or public key
gpg --import 'key.gpg'
