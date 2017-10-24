FROM openjdk:9-jdk

WORKDIR /opt

RUN apt-get update -qq &&\
    apt-get install -y --no-install-recommends openjfx &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
