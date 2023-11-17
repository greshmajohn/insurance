pipeline {

	agent any
	tools{
		maven "Maven"
		 jdk 'jdk17' 
	}
	
	
	
	stages{
	
		stage('Clone project') {
		
   			steps{
				checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/greshmajohn/insurance.git']])
			}
		}
		
		stage('Build') {
   			steps{
				 bat 'mvn clean install -DskipTests'
			}
		}
		stage('test') {
   			steps{
				 bat "mvn test -Punit"
			}
		}
		stage('Docker Build') {
				steps{
					echo "Build docker image"
					if docker image inspect emp-insurance >/dev/null 2>&1; then
    					echo "Image exists locally"
					else
   						 echo "Image does not exist locally"
					fi
					
					bat 'docker build -t emp-insurance:latest .'
					
				}
    		  
   		 }
   		 stage('Docker Deployment') {
				steps{
					echo "docker deployment"
					
					bat 'docker run --name emp-insurance -d -p 8082:8082 emp-insurance:latest'
				}
    		  
   		 }
	}
 
  
}