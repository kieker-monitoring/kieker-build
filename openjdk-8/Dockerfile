FROM kieker/kieker-build:base

WORKDIR /opt

RUN apt-get install -y openjdk-8-jdk

# Fix for "java.security.InvalidAlgorithmParameterException: the trustAnchors parameter must be non-empty"
RUN update-ca-certificates -f
