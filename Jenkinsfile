pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:3.6.3-jdk-8'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}