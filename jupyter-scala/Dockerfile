FROM ubuntu:16.04

RUN apt-get update; \
    apt-get install -y python3-dev python3-pip vim openjdk-8.jdk curl; \
    pip3 install spylon_kernel notebook; \
    python3 -m spylon_kernel install

RUN mkdir /appl; \
    curl -s https://www-eu.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz | tar -C /appl -zxvf -

RUN useradd -c 'jupyter notebook user' -d /home/jupyter -m jupyter
USER jupyter
WORKDIR /home/jupyter

# get some data
RUN curl -O curl -O https://litemind.com/wp-content/uploads/misc/litemind-quotes.csv

EXPOSE	4041
EXPOSE	8080

ENV	SPARK_HOME /appl/spark-2.4.0-bin-hadoop2.7

CMD jupyter notebook --ip=0.0.0.0 --port=8080
