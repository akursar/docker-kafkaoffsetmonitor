FROM phusion/baseimage:0.9.16

RUN apt-get update && apt-get install -y \
  openjdk-7-jre-headless

RUN mkdir /kafkaoffsetmonitor && \
  curl -s -L \
  -o /kafkaoffsetmonitor/KafkaOffsetMonitor.jar \
  https://github.com/quantifind/KafkaOffsetMonitor/releases/download/v0.2.1/KafkaOffsetMonitor-assembly-0.2.1.jar

ADD start.sh /kafkaoffsetmonitor/start.sh

EXPOSE 8080

CMD ["/kafkaoffsetmonitor/start.sh"]

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
