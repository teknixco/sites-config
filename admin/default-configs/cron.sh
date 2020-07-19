#!/bin/bash

while true; do
#	for i in {1..10}
#		do
		  nice -n 19 unison -batch -auto cron
		  sleep 600 
#		done
#  	nice -n 19 unison -batch -auto default
#	sleep 5
done

