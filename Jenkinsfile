pipeline {
    agent {
        docker {
            image 'maven:latest'
            args '-v $HOME/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
        	 environment {
                  HOME="."
                }
            steps {
                sh 'mvn -B'
            }
        }
    }
}