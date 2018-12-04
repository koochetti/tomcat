pipeline{
   agent any
    stages 
	{
		stage("docker build"){
			steps{
				sh """
					docker build -t koochetti/tomcat .
				"""
			}
		}
		stage("push to DTR"){
			steps{
			withCredentials([usernamePassword(credentialsId: 'dp', usernameVariable: 'USER', passwordVariable: 'PASSWORD')])
			{
				sh """
					docker login --username $USER --password $PASSWORD
					docker push koochetti/tomcat
				"""
			}
		
		   }
              }
		
	}
}
