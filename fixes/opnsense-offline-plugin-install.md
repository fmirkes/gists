# Install OPNsense plugins offline
* extract [matching plugin tree](https://github.com/opnsense/plugins/tags) to `/usr/plugins`
* `cd /usr/plugins/<PLUGIN>` and `make upgrade`
* in case of missing dependencies: download them from a [mirror](https://opnsense.org/download) and install them via [pkg](https://github.com/fmirkes/gists/blob/main/snippets/pkg.sh)
