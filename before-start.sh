#!/bin/bash

if [[ $(id -u) -ne 0 ]]
    then echo "This script must be run as root"
    exit
fi

mkdir -pv /opt/data/{grafana,hbase,influx}
chown -Rv 472:472 /opt/data/grafana