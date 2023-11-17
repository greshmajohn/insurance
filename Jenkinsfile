pipeline {
	agent any
  stages {
  	stage('Maven Install') {
    	docker-plugin {
      	  {
        	image 'maven:3.5.0'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}