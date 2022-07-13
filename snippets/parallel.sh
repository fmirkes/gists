echo "${NEW_LINE_SEPARATED_HOST_LIST}" | parallel --keep-order --tag "ssh -o 'BatchMode=yes' {} echo 'Hello there'"
