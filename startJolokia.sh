#!/bin/bash

pid=`ps aux | grep java | grep mock | awk '{print $2}'`

echo "pid = $pid"

java -jar stub-jolokia/jolokia-jvm-1.7.1-agent.jar start $pid
