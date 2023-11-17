pipeline {
	agent none
  stages {
  	stage('Maven Install') {
    	agent {
      	docker {
                image 'maven'
                args '--privileged -v $HOME/.m2:/home/jenkins/.m2 -ti -u 496 -e MAVEN_CONFIG=/home/jenkins/.m2 -e MAVEN_OPTS=-Xmx2048m'
            }
      }
      steps {
      	sh 'mvn clean install'
      }
    }
  }
}