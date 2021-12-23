# create encrypted raid10
zpool create -O encryption=on -O keyformat=passphrase -f -m <MOUNTPOINT> <POOL_NAME> \
  mirror <HDD1> <HDD2> \
  mirror <HDD3> <HDD4>

# mount encrypted pool
zfs load-key <POOL_NAME>
zfs mount -a

# create dataset
zfs create <POOL_NAME>/<DATASET_NAME>

# activate compression/dedup
zfs set dedup=on compression=on <POOL_NAME>
zfs set dedup=on compression=on <POOL_NAME>/<DATASET_NAME>
