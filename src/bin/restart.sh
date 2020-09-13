#!/bin/bash
echo "script is about to run stop script."
sh ./stop.sh $1
sleep 5
echo "script has just run start script."
sh ./start.sh $2 $3