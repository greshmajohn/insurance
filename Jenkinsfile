node {
   
	try{
   
   	 stage('Clone Repo') {
        	// for display purposes
      	  // Get some code from a GitHub repository
       		 git url: 'https://github.com/greshmajohn/insurance.git',
        	 branch: 'master'
       
     }
    
	}catch(e){
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