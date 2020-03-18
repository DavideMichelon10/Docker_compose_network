FROM davide1611/dns


RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc

COPY rndc.key /etc/bind/rndc.key
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.options /etc/bind/named.conf.options
COPY /zones/db.1.168.192  /var/lib/bind/db.1.168.192
COPY /zones/db.dnsserver.io /var/lib/bind/db.dnsserver.io

EXPOSE 10000/tcp 53/tcp 53/udp

CMD service bind9 start && tail -F /var/log/syslog
