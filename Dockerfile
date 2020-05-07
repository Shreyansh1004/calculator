FROM openjdk:8-alpine

RUN apk update
RUN apk add maven
COPY pom.xml /var/lib/jenkins/workspace/calci-final/pom.xml
COPY src /var/lib/jenkins/workspace/calci-final/src
COPY target/calci-0.0.1-SNAPSHOT.jar /var/lib/jenkins/workspace/calci-final/target/calci-0.0.1-SNAPSHOT.jar
WORKDIR /var/lib/jenkins/workspace/calci-final
CMD ["java","-cp","target/calci-0.0.1-SNAPSHOT.jar","Calculator.calci.Calculator"]
