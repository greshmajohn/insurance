pipeline {
	agent any
	triggers {
        pollSCM '* * * * *'
    }
  stages {
 	 stage('Initialize'){
        steps {
                def dockerHome = tool 'myDocker'
                env.PATH = "${dockerHome}/bin:${env.PATH}"                }
        }
    	stage('Push to Docker Registry'){
        steps {
            withCredentials([usernamePassword(credentialsId: 'dockerHubAccount', usernameVariable: 'greshmajithin', passwordVariable: 'Jinkuttan@2017')]) {                
            pushToImage(CONTAINER_NAME, CONTAINER_TAG, USERNAME, PASSWORD)
            }            
        }  
    	}
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