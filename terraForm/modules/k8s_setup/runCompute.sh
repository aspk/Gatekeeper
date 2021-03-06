#!/bin/bash

#take in the parameters, use them to kubectl up an ingestion system w/ the designated name.

name=$1; shift
if [ $name == "None" ]
then
  exit
fi
next=$1; shift
ports=()
while [ $next != "PortEnd" ]
do
  ports[${#ports[@]}]=$next
  next=$1; shift
#  echo "got a port $next"
done
master=$1; shift
worker=$1; shift
masterCPUMax=$1; shift
masterCPUMin=$1; shift
masterMemMax=$1; shift
masterMemMin=$1; shift
workerCPUMax=$1; shift
workerCPUMin=$1; shift
workerMemMax=$1; shift
workerMemMin=$1; shift

#sed -i 's/MASTER/$master/g' *.yml
#sed -i 's/WORKER/$worker/g' *.yml
#sed -i 's/MASTERCPUMAX/$masterCPUMax/g' *.yml
#sed -i 's/MASTERCPUMIN/$masterCPUMin/g' *.yml
#sed -i 's/MASTERMEMMAX/$masterMemMax/g' *.yml
#sed -i 's/MASTERMEMMIN/$masterMemMin/g' *.yml
#sed -i 's/WORKERCPUMAX/$workerCPUMax/g' *.yml
#sed -i 's/WORKERCPUMIN/$workerCPUMin/g' *.yml
#sed -i 's/WORKERMEMMAX/$workerMemMax/g' *.yml
#sed -i 's/WORKERMEMMIN/$workerMemMin/g' *.yml
for i in `ls compute/$name/*.yml`; do kubectl create -f $i; done
#Port Forwarding Logic here? i.e. for loop through the array, open ports.  Seems difficult to target each instance after creation?

