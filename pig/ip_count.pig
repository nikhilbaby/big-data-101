lines = LOAD '/tmp/demo/data/apache_logs' AS (line:chararray);
words = FOREACH lines GENERATE FLATTEN(TOKENIZE(line)) as word;
ips = FILTER words BY (word matches '[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}');
grouped = GROUP ips BY word;
wordcount = FOREACH grouped GENERATE group, COUNT(ips);
DUMP wordcount;