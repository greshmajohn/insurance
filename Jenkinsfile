node {
 tools {
    maven 'M3'
  }
  stage("Clone project") {
    git branch: 'master', url: 'https://github.com/greshmajohn/insurance.git'
  }

   stage('build'){
        withMaven(maven: 'mvn') {
            sh "mvn clean package"
        }
    }
}