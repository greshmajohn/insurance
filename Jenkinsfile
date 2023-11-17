pipeline {
	agent any
	triggers {
        pollSCM '* * * * *'
    }
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
        	image 'maven:latest'
        }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}