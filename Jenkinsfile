pipeline {

	agent any
	tools {
            // Here we have pairs of tool symbols (not all tools have symbols, so if you
            // try to use one from a plugin you've got installed and get an error and the
            // tool isn't listed in the possible values, open a JIRA against that tool!)
            // and installations configured in your Jenkins master's tools configuration.
            maven "MAVEN_HOME"
            jdk "JAVA_HOME"
        }
	
	
	stages{
		stage("Clone project"){
			steps{
				echo "hello world"
			}
		}
	}
 
  
}