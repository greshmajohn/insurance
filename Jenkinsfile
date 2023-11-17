pipeline {
	agent any
  stages {
  	stage('Maven Install') {
    	docker {
      	  {
        	image 'maven:latest'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}