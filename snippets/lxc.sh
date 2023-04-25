# start container in debug mode
lxc-start -n <CONTAINER_ID> -F -lDEBUG -o <LOG_FILE>

# kill container
lxc-stop --nowait --nolock --kill -n <CONTAINER_ID>
