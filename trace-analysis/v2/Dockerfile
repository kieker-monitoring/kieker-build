FROM openjdk:8-jdk-slim

WORKDIR /opt

RUN apt-get update -qq &&\
    apt-get install -y --no-install-recommends openjfx &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
