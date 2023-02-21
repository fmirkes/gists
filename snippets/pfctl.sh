# list all active rules
pfctl -P -s rules
pfctl -P -sr

# list everything (including states, etc.)
pfctl -P -s all
pfctl -P -sa
