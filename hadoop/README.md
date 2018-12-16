# hadoop

> Note: work in progress

## how to use
bring up a single node hadoop cluster:
```
docker-compose up
```

scale to three nodes:
```
docker-compose scale node=3
```

run a test mapreduce job:
```
docker-compose exec node bash
hadoop jar /opt/hadoop-2.8.4/share/hadoop/mapreduce/hadoop-mapreduce-examples-2.8.4.jar pi 16 1000
```

## web insterfaces

set up a socks5 proxy listening on port 1080 into the cluster:
```
ssh root@localhost -D 1080
```

now configure your browser to use 127.0.0.1:1080 as socks5 proxy including DNS requests

- Hadoop: http://master:8088
- HDFS:   http://master:50070

## local volume
The setup uses a local dir (```hadoop-node/dirs/etc```) to distribute cluster configuration to all nodes in the cluster, including the master node.
