node {
  stage("Clone project") {
    git branch: 'master', url: 'https://github.com/greshmajohn/insurance.git'
  }

  stage("Build project with test execution") {
    sh "mvn clean install"
  }
}