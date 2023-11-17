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
		stage('Deployment') {
				steps{
					echo "deployment"
					bat 'docker build -t emp-insurance:latest .'
					bat 'docker run --name emp-insurance -d -p 8081:8081 emp-insurance:latest'
				}
    		  
   		 }
	}
 
  
}