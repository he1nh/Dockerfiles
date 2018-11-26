#!/bin/bash

if [ "$NAMENODE" == "TRUE" ]
then
	hdfs namenode -format -nonInteractive
        hdfs namenode &
else
	hdfs datanode &
fi

if [ "$RESOURCE_MANAGER" == "TRUE" ]
then
	exec yarn resourcemanager
else
	exec yarn nodemanager
fi

