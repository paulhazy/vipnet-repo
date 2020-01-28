#!/usr/bin/env bash

#set -x

#########################################
##### Checking IPLIR daemon status #####
#######################################

logfile='/var/log/iplir/iplir_status.log'
logpath='/var/log/iplir/'
logs(){

if [[ -d $logpath ]]
	then
	return
	else
	mkdir $logpath && touch $logfile
fi

}

logs

if [[ `ps aux | grep iplircfg | grep -v grep | wc -l` -eq 0 ]]
	then
	echo $(/sbin/iplir start) && echo "iplir last started at" $(date +"%y-%m-%d %T") > $logfile
	else
	exit 0
fi

