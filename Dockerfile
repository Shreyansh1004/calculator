FROM openjdk:8-alpine

RUN apk update
RUN apk add maven
RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
COPY pom.xml /home/shreyansh/git/calci/pom.xml
COPY src /home/shreyansh/git/calci/src
COPY target/calci-0.0.1-SNAPSHOT.jar /home/shreyansh/git/calci/target/calci-0.0.1-SNAPSHOT.jar
WORKDIR /home/shreyansh/git/calci
CMD ["java","-cp","target/calci-0.0.1-SNAPSHOT.jar","Calculator.calci.Calculator"]
