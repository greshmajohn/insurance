pipeline {

	agent any
	tools{
		maven "Maven"
		 jdk 'jdk17' 
	}
	
	
	
	stages{
	
	
		
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
   		 stage('Docker Build') {
				steps{
					echo "docker deployment"
					
					bat 'docker run --name emp-insurance -d -p 8082:8082 emp-insurance:latest'
				}
    		  
   		 }
	}
 
  
}