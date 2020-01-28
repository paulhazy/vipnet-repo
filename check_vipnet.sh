#!/bin/bash

mftp_state=`sudo /sbin/failover info | grep "mftp state" | awk '{print $4}' `
total=`sudo /sbin/failover info | grep "total cpu" | awk '{print $4}' `
iplir_state=`sudo /sbin/failover info | grep "iplir state" | awk '{print $4}' `

####### checking mftp state ##########

if [ $mftp_state = "works" ]
	then 
	echo "MFTP works"
	else
	echo "MFTP not running"
fi

######## checking iplir state ###########

if [ $iplir_state = "works" ]
	then 
	echo "iplir works"
	else 
	echo "iplir not running"
fi

echo "total cpu is $total"

