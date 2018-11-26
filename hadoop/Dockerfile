FROM ubuntu:16.04

COPY . /app

RUN apt update; \
    apt install -y openjdk-8-jre curl vim tmux; \
    curl -s http://www-eu.apache.org/dist/hadoop/common/hadoop-2.8.4/hadoop-2.8.4.tar.gz | tar -C /opt -zxvf - 

ENV HADOOP_HOME /opt/hadoop-2.8.4
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH ${PATH}:/${HADOOP_HOME}/bin:${JAVA_HOME}/bin

CMD /app/run.sh
