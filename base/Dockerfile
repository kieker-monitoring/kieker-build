FROM ubuntu:14.04

WORKDIR /opt

RUN apt-get update -qq && \
    apt-get install -y git r-base r-cran-rserve

VOLUME ["/opt/share"]
