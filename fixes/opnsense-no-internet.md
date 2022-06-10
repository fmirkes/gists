# No internet traffic in VM
(icmp and dns are working)

see https://forum.opnsense.org/index.php?topic=15900.0
- go to https://<OPNSENSE_HOST>/system_advanced_firewall.php
- Check `Disable reply-to on WAN rules`
