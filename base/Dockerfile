FROM ubuntu:14.04

WORKDIR /opt

ENV KIEKER_GIT_REPO="http://build.se.informatik.uni-kiel.de/gitlab/kieker/kieker.git"

RUN mkdir -p /opt/share

RUN apt-get update -qq && \
    apt-get install -y git r-base r-cran-rserve

VOLUME ["/opt/share"]
