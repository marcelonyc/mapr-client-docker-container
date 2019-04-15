#!/bin/bash

VOL="/home/ubuntu"
ticket="<your mapr ticket base 64 encioded>"
##cat <ticket file> | baase64 -w 0
export MAPR_TICKET=$ticket
export MAPR_CLDB_HOSTS="<comma separated list of cldb host names or IPs>"
export MAPR_CLUSTER="<name of your cluster"

docker run -d \
--device /dev/fuse \
-e MAPR_TICKET=${ticket} \
-e MAPR_CLDB_HOSTS=${MAPR_CLDB_HOSTS} \
-e MAPR_CLUSTER=${MAPR_CLUSTER} \
--privileged \
-e CMD="sleep 100000000" <nanme of the image you created> /bin/bash
