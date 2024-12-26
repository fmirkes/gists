# flush dns
sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder

# bypass gatekeeper
xattr -d com.apple.quarantine <EXECUTABLE>
