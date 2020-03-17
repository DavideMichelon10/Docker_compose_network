FROM davide1611/dns

RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc
#apt-get install bind9 &&  mkdir -p /dns-dir-inside-container

COPY hosts /etc/hosts
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.options /etc/bind/named.conf.options
COPY /zones/db.1.168.192  /var/lib/bind/db.1.168.192
COPY /zones/db.dnsserver.io /var/lib/bind/db.dnsserver.io
# Set this as the default, working directory.
# We'll land here when we SSH into the container.
#WORKDIR /dns-dir-inside-container

# Copy everything inside src to our directory in the container
#ADD ./src /backend-dir-inside-container

