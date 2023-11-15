pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:3.23'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}