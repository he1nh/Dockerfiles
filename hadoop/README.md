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

## web insterfaces

- Hadoop: http://localhost:8088
- HDFS:   http://localhost:50070

## local volume
The setup uses a local dir (```./hadoop-node/etc```) to distribute cluster configuration to all nodes in the cluster, including the master node.
