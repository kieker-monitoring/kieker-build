FROM kieker/kieker-build:base

WORKDIR /opt/kieker

RUN apt-get install -y openjdk-6-jdk

CMD git clone ${KIEKER_GIT_REPO} kieker && \
    cd kieker/ && \
   ./gradlew -i -s distribute | tee /opt/share/kieker-build.log
