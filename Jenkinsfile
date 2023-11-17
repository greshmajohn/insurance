pipeline {

	agent any
	tools{
		maven "Maven"
		 jdk 'jdk17' 
	}
	
	
	
	stages{
		
		stage('Build') {
   			steps{
				 sh 'mvn -Dmaven.test.failure.ignore=true install'
			}
		}
	}
 
  
}