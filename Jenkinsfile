node {
 
  stage("Clone project") {
    git branch: 'master', url: 'https://github.com/greshmajohn/insurance.git'
  }
  stage('com'){
    def mvnHome = tool name: 'Apache Maven 3.9.4', type: 'maven'
    sh "${mvnHome}/bin/mvn -B -DskipTests clean package"
  }

   stage('build'){
        withMaven(maven: 'mvn') {
            sh "mvn clean package"
        }
    }
}