#!/bin/bash

#获取配置文件名称
confName=prod

#nohup java -XX:+UseConcMarkSweepGC -Xmx512m -Xms64m -Xss256k  -XX:+PrintGCDateStamps -XX:+PrintGCDetails  -Xloggc:./logs/java_gc.log  -XX:-HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=./logs/ -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dloader.path=.,lib -Dspring.config.location=config/ -jar aryapay-api.jar --spring.profiles.active=${confName} > nohup.out &
nohup java -XX:+UseConcMarkSweepGC -Xmx512m -Xms64m -Xss256k  -XX:+PrintGCDateStamps -XX:+PrintGCDetails  -Xloggc:./logs/java_gc.log  -XX:-HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=./logs/ -Dfile.encoding=UTF-8 -Dsun.jnu.encoding=UTF-8 -Dloader.path=.,lib -Dspring.config.location=config/ -jar aryapay-api.jar --spring.profiles.active=${confName} > /dev/null 2>&1 &
