$ORIGIN .
$TTL 604800	; 1 week
dnsserver.io		IN SOA	dns.dnsserver.io. root.dnsserver.io. (
				4          ; serial
				604800     ; refresh (1 week)
				86400      ; retry (1 day)
				2419200    ; expire (4 weeks)
				604800     ; minimum (1 week)
				)
			NS	dnsDhcp.dnsserver.io.
$ORIGIN dnsserver.io.
dns			A	192.168.1.100
host1			A	192.168.1.1
host2			A	192.168.1.2
$TTL 3600	; 1 hour
host4			A	192.168.1.104
			TXT	"316b0d477184497511a66745621531c95d"

