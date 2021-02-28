pipeline {
    agent any
    tools {
      maven 'Maven3.6.3'
    }

    stages {
        Stage('Sonar') {
                        steps {
                def scannerHome = tool 'sonarqube'
                withSonarQubeEnv('sonarqube') {
                    sh "${scannerHome}/bin/sonar-scanner"
                }
        }      
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
