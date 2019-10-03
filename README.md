## Map Reduce

- Running the example using python locally

```angular2
cat ./data/apache_logs | python ./map_reduce/mapper.py | sort | python ./map_reduce/reducer.py
```

- Running example in hadoop cluster 

```angular2
hadoop jar /opt/cloudera/parcels/CDH-6.2.0-1.cdh6.2.0.p0.967373/jars/hadoop-streaming-3.0.0-cdh6.2.0.jar  -file ./map_reduce/mapper.py -mapper mapper.py  -file ./map_reduce/reducer.py -reducer reducer.py  -input /tmp/demo/data/apache_logs -output /tmp/output12/
```

## Pig

- Running the script

```angular2
pig -x mapreduce ./pig/ip_count.pig
```
## Hive

- Running the script

```angular2
 hive -f ./hive/got_battles.sql 
```