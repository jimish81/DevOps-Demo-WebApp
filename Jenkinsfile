pipeline {
     environment {
    //login id/docker reposotory defined in Jenkins followe by repository name
    registry = "jimish22/avncommunication"
    //credential = Id given jenkins
    registryCredential = 'docker'
    dockerImage = ''
    //checked if any container is running with same name node-app container Id will store same & stage cleanup will close that container
    containerId = sh(script: 'docker ps -aqf "name=myApp"', returnStdout: true)
  }  
    
    agent any
    tools {
         maven 'Maven3.6.3'
      // maven 'Maven'
    }

    stages {
      
         stage('Run UI test') {
          steps{
            sh ' mvn -f functionaltest/pom.xml test' 
              }
                         post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }

    }
}
