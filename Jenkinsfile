node {
	 def WORKSPACE = "${env.WORKSPACE}" 
	 
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
}