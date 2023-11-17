pipeline {
    agent { docker { image 'maven:latest' } }
    stages {
        stage('build') {
            steps {
                bat 'mvn --version'
            }
        }
    }
}
