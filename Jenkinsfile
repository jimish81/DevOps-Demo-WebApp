pipeline {
    agent any
    tools {
      maven 'Maven3.6.3'
   //   hudson.plugins.sonar.SonarRunnerInstallation 'sonarqube'
    }

    stages {
       // stage('Sonar') {
                            stage('Sonarqube') {
                                environment {
                                     scannerHome = tool 'sonarqube'
                                            }
                            steps {
                                  withSonarQubeEnv('sonarqube') {
                                      sh "${scannerHome}/bin/sonar-scanner"
                                    }
                               timeout(time: 10, unit: 'MINUTES') {
                                  waitForQualityGate abortPipeline: true
        }
    }
}           
     //   }      
        stage('Build') {
            steps {
                sh "mvn -B -DskipTests clean package"
            }
        }
         stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
