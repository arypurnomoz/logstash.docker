#!/bin/sh

CONFIG_FILE=/logstash.conf

if [ ! -f $CONFIG_FILE ]; then
  if [ -z "$CONFIG_URL" ]; then
    echo "should provide \$CONFIG_URL"
    exit 1
  fi
  
  if ! wget $CONFIG_URL -O $CONFIG_FILE; then
    echo "failed to retrieve config $CONFIG_URL"
    exit 1
  fi
fi

exec /logstash/bin/logstash -f $CONFIG_FILE
