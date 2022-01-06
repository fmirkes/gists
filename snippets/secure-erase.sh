# nvme
nvme format -s1 /dev/nvme0

# ssd
# if the ssd doesn't support security-erase, format + trim should also be enough
hdparm --user-master u --security-set-pass foo /dev/sda
hdparm --user-master u --security-erase foo /dev/sda # secure erase also removes the password again

# hdd
dd if=/dev/zero of=/dev/sda status=progress
