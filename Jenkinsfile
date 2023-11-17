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
					
					withCredentials([usernamePassword(credentialsId: 'greshma.john.pallithazhathu@gmail.com', passwordVariable: 'Jinkuttan@2017', usernameVariable: 'greshmajithin')]) {
        			bat "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
         			bat 'docker push greshmajithin/emp-insurance:latest'
         			}
				}
    		  
   		 }
	}
 
  
}