FROM ubuntu:16.04

COPY . /

RUN apt update; \
    apt install -y openssh-server openjdk-8-jre curl vim tmux; \
    mkdir -p /var/run/sshd; \
    echo 'root:toor' | chpasswd; \
    sed -i 's/PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config; \
    ssh-keygen -N "" -t rsa -b 4096 -f ~/.ssh/id_rsa; \
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys; \
    chmod 600 ~/.ssh/authorized_keys

RUN curl -s http://www-eu.apache.org/dist/hadoop/common/hadoop-2.8.4/hadoop-2.8.4.tar.gz | tar -C /opt -zxvf -; \
    curl -s https://www-eu.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz | tar -C /opt -zxvf -

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV HADOOP_HOME /opt/hadoop-2.8.4
ENV HADOOP_CONF_DIR $HADOOP_HOME/etc/hadoop
ENV SPARK_HOME /opt/spark-2.4.0-bin-hadoop2.7
ENV PATH ${PATH}:/${HADOOP_HOME}/bin:${JAVA_HOME}/bin

RUN echo >> ~/.bashrc \
    ;echo "# hadoop config" >> ~/.bashrc \
    ;echo "export JAVA_HOME=$JAVA_HOME" >> ~/.bashrc \
    ;echo "export HADOOP_HOME=$HADOOP_HOME" >> ~/.bashrc \
    ;echo "export HADOOP_CONF_DIR=$HADOOP_CONF_DIR" >> ~/.bashrc \
    ;echo "export SPARK_HOME=$SPARK_HOME" >> ~/.bashrc \
    ;echo 'PATH=$PATH:$HADOOP_HOME/bin:$SPARK_HOME/bin' >> ~/.bashrc 

RUN mkdir -p /opt/logs; \
    mkdir -p /opt/cache

CMD /run.sh
