FROM kieker/kieker-build:base

WORKDIR /opt

RUN apt-get install -y openjdk-7-jdk

CMD git clone ${KIEKER_GIT_REPO} kieker && \
    ln -s /opt/kieker/build /opt/share/build && \
    cd kieker/ && \
   ./gradlew jenkinsBuild | tee /opt/share/kieker-build.log
