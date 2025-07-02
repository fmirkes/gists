# list package contents
apt-file update
apt-file list <PACKAGE>

# extract deb
ar -x <DEB_FILE>

# download package + dependencies debs
apt-get -o 'Dir::Cache=/home/dev/foobar' reinstall --download-only <PACKAGE>
