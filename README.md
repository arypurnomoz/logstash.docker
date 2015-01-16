# USAGE:

the logstash home is on /logstash

```sh
docker run -v /logstash.conf:/logstash.conf arypurnomoz/logstash

# or with an url (https not supported)
docker run -e CONFIG_URL=http://logstash/conf arypurnomoz/logstash
```


