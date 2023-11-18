FROM openjdk:17
VOLUME /tmp/app
EXPOSE 8082
WORKDIR /home

COPY target/insurance-0.0.1-SNAPSHOT.jar /app/build/libs/emp-insurance.jar
ENTRYPOINT ["java","-jar","/app/build/libs/emp-insurance.jar"]