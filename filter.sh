#!/bin/bash

#############################################################################
## 									   ##
##	Title : Filter Script						   ## 	
##									   ##
##	Author : Ernest Odhiambo Elnino					   ##
##									   ##
##	Github : https://github.com/ProtocolWhisperer01 		   ##
#############################################################################


for ip in `seq 1 254` ; do 
ping -c 1 $1.$ip | grep "64 byte" | cut -d " " -f 4 | tr -d ":" & 
done
