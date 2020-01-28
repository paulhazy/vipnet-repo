<<<<<<< HEAD
#!/bin/bash
=======
#!/usr/bin/env bash
>>>>>>> b9602b0dd174ec80f6dff8fe66d603052048946d

mftp_state=`sudo /sbin/failover info | grep "mftp state" | awk '{print $4}' `
total=`sudo /sbin/failover info | grep "total cpu" | awk '{print $4}' `
iplir_state=`sudo /sbin/failover info | grep "iplir state" | awk '{print $4}' `
<<<<<<< HEAD

####### checking mftp state ##########

=======
>>>>>>> b9602b0dd174ec80f6dff8fe66d603052048946d
if [ $mftp_state = "works" ]
	then 
	echo "MFTP works"
	else
	echo "MFTP not running"
fi
<<<<<<< HEAD

######## checking iplir state ###########

=======
>>>>>>> b9602b0dd174ec80f6dff8fe66d603052048946d
if [ $iplir_state = "works" ]
	then 
	echo "iplir works"
	else 
	echo "iplir not running"
fi
<<<<<<< HEAD

=======
>>>>>>> b9602b0dd174ec80f6dff8fe66d603052048946d
echo "total cpu is $total"

