#!/bin/bash

fileName=aryapay-api.jar

pids=`pgrep -f ${fileName}`
if [ "${pids}" ]
then
    for pid in ${pids}
    do
        sudo kill ${pid}
        echo -e "\033[31m kill pid-->${pid}\033[0m"
    done
else
    echo -e "\033[31m ${fileName} is not running...\033[0m"
fi

