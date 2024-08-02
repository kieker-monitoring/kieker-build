# kieker-build
Build environments for Kieker based

## Publishing

For publishing an image, you need to login, build it and publish. For example, for eclipe temurin with JDK 17, this requires

```
cd temurin-jdk17
docker login --username=kiekerci
docker build -t "kieker/kieker-build:temurin17" .
docker push kieker/kieker-build:temurin17
```
