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
					
					bat 'docker login -u "greshmajithin" -p "Jinkuttan@2017" docker.io'
					bat 'docker tag emp-insurance greshmajithin/emp-insurance'
					bat 'docker push greshmajithin/emp-insurance:latest'
					
				}
    		  
   		 }
   		 stage('Docker Clean up') {
   		 
   		 	steps{
   		 		echo "Delete all dangling resources"
   		 		bat 'docker  system prune'
   		 	}
   		 }
   		 
   		
	}
	 post {
        		always {
        			mail bcc: '', body: '''Deployment successfull for repository - Insurance

					Regards
					CICD Admin''', cc: '', from: '', replyTo: '', subject: 'Insurance: CICD Deployment Successful', to: 'greshmaj99@gmail.com'

        		}
        }
 
  
}

