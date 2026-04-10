# flush dns
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

# bypass gatekeeper
sudo xattr -d com.apple.quarantine <EXECUTABLE>

# reset app permissions
sudo tccutil reset All

