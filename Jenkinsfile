pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker-plugin {
        	image 'maven:3.5.0'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}