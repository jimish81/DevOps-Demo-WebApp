pipeline {
    agent any
    tools {
      maven 'Maven3.6.3
    }

    stages {
        stage('Build') {
            steps {
                sh "mvn package"
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
