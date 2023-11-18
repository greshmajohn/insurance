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
					
					bat 'docker build -t emp-insurance:latest .'
					
				}
    		  
   		 }
   		 stage('Docker Deployment') {
				steps{
					echo "docker deployment"
					bat 'docker login -u "greshmajithin" -p "Jinkuttan@2017" '
					bat 'docker push emp-insurance:latest'
					
				}
    		  
   		 }
	}
 
  
}