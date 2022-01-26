# server
iperf -s -p 1337

# client
#   -t runtime in seconds
#   -i print status every x seconds
iperf -c <SERVER> -p 1337 -t 3600 -i 60
