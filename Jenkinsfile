node {
	 def WORKSPACE = "/var/lib/jenkins/workspace/springboot-deploy"
     def dockerImageTag = "emp-insurance${env.BUILD_NUMBER}"
     try{
     	 notifyBuild('STARTED')
     	 stage('Clone Repo') {
        	git url: 'https://github.com/greshmajohn/insurance.git',
            credentialsId: 'gitlabUserId',
            branch: 'master'
     	}
     	 stage('Build docker') {
         dockerImage = docker.build("emp-insurance:${env.BUILD_NUMBER}")
   		 }
   		  stage('Deploy docker'){
          echo "Docker Image Tag Name: ${dockerImageTag}"
          sh "docker stop emp-insurance || true && docker rm emp-insurance || true"
          sh "docker run --name emp-insurance -d -p 8082:8082 emp-insurance:${env.BUILD_NUMBER}"
    	}
    	 
     }
     catch(e){
   			 currentBuild.result = "FAILED"
    	throw e
		}finally{
    		notifyBuild(currentBuild.result)
 	}
}

def notifyBuild(String buildStatus = 'STARTED'){

 // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESSFUL'
  
   // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def now = new Date()
  
  // message
  def subject = "${buildStatus}, Job: ${env.JOB_NAME} FRONTEND - Deployment Sequence: [${env.BUILD_NUMBER}] "
  def summary = "${subject} - Check On: (${env.BUILD_URL}) - Time: ${now}"
  def subject_email = "Spring boot Deployment"
  def details = """<p>${buildStatus} JOB </p>
  <p>Job: ${env.JOB_NAME} - Deployment Sequence: [${env.BUILD_NUMBER}] - Time: ${now}</p>
    <p>Check console output at "<a href="${env.BUILD_URL}">${env.JOB_NAME}</a>"</p>"""
    
    // Email notification
  emailext (
     to: "greshmaj99@gmail.com",
     subject: Insurance build status,
     body: insurance build completed successfully,
     recipientProviders: [[$class: 'DevelopersRecipientProvider']]
  )
}