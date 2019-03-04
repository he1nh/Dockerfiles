FROM ubuntu:18.04

RUN apt-get update; \
    apt-get install -y vim openjdk-8.jdk curl python3-dev python3-pip;

RUN pip3 install spylon_kernel jupyter jupyterlab findspark pandas numpy matplotlib; \
    python3 -m spylon_kernel install

RUN curl -s https://www-eu.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz | tar -C /opt -zxvf -

RUN useradd -c 'jupyter notebook user' -d /home/jupyter -m jupyter

USER jupyter
WORKDIR /home/jupyter

# get some data
RUN curl -s -L -O https://litemind.com/wp-content/uploads/misc/litemind-quotes.csv; \
    curl -s -L -O http://www.gutenberg.org/ebooks/3160.txt.utf-8; \
    curl -s -L -O http://www.gutenberg.org/ebooks/6150.txt.utf-8

EXPOSE	4041
EXPOSE	8888

ENV	SPARK_HOME /opt/spark-2.4.0-bin-hadoop2.7

#CMD jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser
CMD jupyter lab --ip=0.0.0.0 --port=8888 --no-browser
