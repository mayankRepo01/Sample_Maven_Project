pipeline{
	agent { dockerfile true }
	stages {
		stage ('index'){
		     steps {
                         sh "cp /App/Pipeline_Maven_Project-0.0.1-SNAPSHOT.jar ${WORKSPACE}"
                         archiveArtifacts "Pipeline_Maven_Project-0.0.1-SNAPSHOT.jar"
                     }
		    
                }
        }
}
