# Minimal docker image for running [Kafka Offset Monitor](http://quantifind.github.io/KafkaOffsetMonitor/)

- Built on [baseimage-docker](http://phusion.github.io/baseimage-docker/)

To run, publish Kafka Offset Monitor's default web port ( 8080 )

    docker run -d -p 8080:8080 akursar/kafkaoffsetmonitor

In addition, you can set the following ENV vars, listed here with default as set in start.sh

* ${ZK_HOSTS:-localhost:2181}
* ${PORT:-8080}
* ${REFRESH_SECODS:-10}
* ${RETAIN_DAYS:-2}

For exampple:

    docker run -d \
    -p 8080:8080 \
    -e "ZK_HOSTS=zk1:2181,zk2:2181,zk3:2181/chroot/kafka" \
    akursar/kafkaoffsetmonitor
