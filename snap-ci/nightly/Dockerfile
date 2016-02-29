FROM kieker/kieker-build:openjdk6

WORKDIR /opt

RUN apt-get install -y texlive texlive-generic-extra texlive-fonts-extra nbibtex

CMD cd kieker && ./gradlew -S jenkinsNightlyBuild -x uploadArchives

