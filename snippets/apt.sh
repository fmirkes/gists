# list package contents
apt-file update
apt-file list <PACKAGE>

# extract deb
ar -x <DEB_FILE>

# download package + direct dependencies debs
apt-get -o 'Dir::Cache=/home/dev/foobar' install --download-only <PACKAGE>

# download package + rescursive dependencies debs
apt-get -o 'Dir::Cache=/home/dev/foobar' reinstall --download-only <PACKAGE>
