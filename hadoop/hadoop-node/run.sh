#!/bin/bash

# start ssh server
/usr/sbin/sshd

if [ ! -z "$NAMENODE" ]
then
	hdfs namenode -format -nonInteractive
    hdfs namenode &
else
	hdfs datanode &
fi

if [ ! -z "$RESOURCE_MANAGER" ]
then
	exec yarn resourcemanager
else
	exec yarn nodemanager
fi
