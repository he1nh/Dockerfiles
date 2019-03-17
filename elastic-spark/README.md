# Elastic Spark

A docker environment containing:

- zeppelin notebook
- elastic search node
- kibana node

## How to use

```
docker-compose up
```

- zeppelin: http://127.0.0.1:8080
- kibana: http://127.0.0.1:5601

- elasticsearch (REST API):
```
curl -X GET http://127.0.0.1/<index>
```

## Elasticsearch

- getting information of an index:
```
curl -X GET http://127.0.0.1:9200/<index>

example:
```
curl http://127.0.0.1:9200/index
```

- search query
```
curl -X GET -H 'Content-Type: application/json' http://127.0.0.1/index/_search?q=plaatsnaam:Groningen~&pretty
```

### links

- https://www.elastic.co/guide/en/elasticsearch/hadoop/6.6/spark.html
