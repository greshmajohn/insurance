FROM jenkins/jenkins
LABEL maintainer="greshmajithin"
VOLUME /tmp/app
EXPOSE 8082
WORKDIR /home
COPY target/insurance-0.0.1-SNAPSHOT.jar /home/emp-insurance.jar
ENTRYPOINT ["java","-jar","/emp-insurance.jar"]