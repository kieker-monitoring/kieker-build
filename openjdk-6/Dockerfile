FROM kieker/kieker-build:base

WORKDIR /opt

RUN apt-get install -y openjdk-6-jdk

CMD git clone ${KIEKER_GIT_REPO} kieker && \
    cd kieker/
