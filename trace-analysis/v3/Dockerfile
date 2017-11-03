FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
      software-properties-common \
      python-software-properties

RUN echo oracle-java9-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    apt-get install -y \
      oracle-java9-installer \
      oracle-java9-set-default && \
    rm -rf /var/cache/oracle-jdk9-installer \
    rm -rf /var/lib/apt/lists/*
