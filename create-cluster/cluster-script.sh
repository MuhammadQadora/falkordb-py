#!/bin/bash


if [[ $HOSTNAME == "node5" ]];then
    redis-server $@ &
    redis-cli --cluster create 'node0:6379' 'node1:6379' 'node2:6379'  'node3:6379' 'node4:6379'  'node5:6379' --cluster-replicas 1
else
    redis-server $@
fi