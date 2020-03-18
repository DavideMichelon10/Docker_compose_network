FROM davide1611/dns

RUN apt-get update && apt-get install -y isc-dhcp-server
#RUN apt-get install iputils-ping

COPY rndc.key /etc/dhcp/ddns-keys/rndc.key
COPY dhcpd.conf /etc/dhcp/dhcpd.conf
COPY isc-dhcp-server /etc/default/isc-dhcp-server
#RUN ["touch", "/var/lib/dhcp/dhcpd.leases"]

CMD service isc-dhcp-server stop
CMD service isc-dhcp-server start
