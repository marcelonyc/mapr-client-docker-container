#! /bin/bash

/opt/mapr/server/configure.sh -c -C ${MAPR_CLDB_HOSTS} -N ${MAPR_CLUSTER} -secure

echo ${MAPR_TICKET}|base64 -d > /opt/mapr/conf/maprfuseticket

service mapr-posix-client-platinum start

eval ${CMD}
