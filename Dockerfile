FROM openjdk:8-alpine

RUN apk update
RUN apk add maven
COPY pom.xml /home/shreyansh/git/calci/pom.xml
COPY src /home/shreyansh/git/calci/src
COPY target/calci-0.0.1-SNAPSHOT.jar /home/shreyansh/git/calci/target/calci-0.0.1-SNAPSHOT.jar
WORKDIR /home/shreyansh/git/calci
CMD ["java","-cp","target/calci-0.0.1-SNAPSHOT.jar","Calculator.calci.Calculator"]
