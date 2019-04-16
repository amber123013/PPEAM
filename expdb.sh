#!/bin/bash
CURRENT_DIR=$(cd `dirname $0`; pwd)
cd $CURRENT_DIR
/usr/local/bin/docker-compose exec -T db exp E3EAM_C03/E3EAM_C03@192.168.200.99/orcl file="/opt/oracle/dpdump/E3EAM_C03_$(date +%Y%m%d%H%M%S).dmp" log="/opt/oracle/dpdump/E3EAM_C03_$(date +%Y%m%d%H%M%S).log"
