#!/bin/bash
DATE=`date '+%m%d%y_%M%S'`
docker-compose up -d 
sleep 30
for loop in {1..10}
do
	curl http://localhost:9090/
	sleep 1
done
docker-compose down 	
