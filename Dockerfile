FROM openjdk:17
VOLUME /tmp/app
EXPOSE 8082
WORKDIR /home
RUN apt-get update && apt-get install librrds-perl rrdtool -y
COPY target/insurance-0.0.1-SNAPSHOT.jar /home/emp-insurance.jar
ENTRYPOINT ["java","-jar","/app/build/libs/emp-insurance.jar"]