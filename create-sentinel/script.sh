#!/bin/bash
echo -e "\nsentinel announce-ip $HOSTNAME" >> /data/sentinel.conf
echo -e "\nreplica-announce-ip $HOSTNAME" >> /data/node.conf

redis-server $@