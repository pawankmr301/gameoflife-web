#!/bin/bash
DATE=`date '+%m%d%y_%M%S'`
docker build -t gameoflife:latest . 
docker tag gameoflife:latest pawankmr301/gameoflife:${DATE}
docker push pawankmr301/gameoflife:${DATE}
