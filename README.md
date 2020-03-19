# Docker_compose_network
My application actually is composed by 4 services: a DNS server, a DHCP server and two hosts needed to try the correctness of the project.
## Getting started
> docker-compose up -- build
### DNS
- **named.conf.local :** where the DNS zones are listed. It contains reference to the zones located in */var/lib/bind/* and the key. The rndc.key must be the same as the one on the DHCP server, in fact thanks to this key the server DHCP can write IP-hostname to the DNS zones.
- **named.conf.options:** The section *acl "trusted"* is used to limit access to the server (writing 192.168.1.0/24 all network is allowed to query the DNS).
- **/zones/db.dnsserver.io:** This is the forward zone. The DNS looks here when it has to find the IP of an hostname (i.e. *ping host1.dnsserver.io*)
- **/zones/db.1.168.192:** This is the reverse zone. The DNS looks here when it has to find the hostname of an IP (i.e. *nslookup 192.168.1.2*)

### DHCP
- **isc-dhcp-server:** to use the DHCP just for ipv4
- **dhcpd.conf:** it is the DHCP configuration. The areas of the DNS are also defined, using the key the DHCP  will update the DNS zone.

