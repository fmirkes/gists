# No internet traffic in VM
(icmp and dns are working)

see https://forum.opnsense.org/index.php?topic=15900.0
- go to https://<OPNSENSE_HOST>/system_advanced_firewall.php
- Check `Disable reply-to on WAN rules`

# Install OPNsense plugins offline
* extract [matching plugin tree](https://github.com/opnsense/plugins/tags) to `/usr/plugins`
* `cd /usr/plugins/<PLUGIN>` and `make upgrade`
* in case of missing dependencies: download them from a [mirror](https://opnsense.org/download) and install them via [pkg](https://github.com/fmirkes/gists/blob/main/snippets/pkg.sh)
