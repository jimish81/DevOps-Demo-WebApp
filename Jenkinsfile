pipeline {
    agent any
    tools {
         maven 'Maven3.6.3'
      // maven 'Maven'
    }

    stages {
       // stage('Sonar') {
              //              stage('Sonarqube') {
               //                 environment {
                 //                    scannerHome = tool 'sonarqube'
                   //                         }
                     //       steps {
                       //           withSonarQubeEnv('sonarqube') {
                                     // sh "${scannerHome}/bin/sonar-scanner"
                         //             sh '/var/lib/jenkins/tools/hudson.tasks.Maven_MavenInstallation/Maven/bin/mvn -Dsonar.test.exclusions=**/test/java/servlet/createpage_junit.java -Dsonar.login=admin -Dsonar.password=sonar -Dsonar.tests=. -Dsonar.inclusions=**/test/java/servlet/createpage_junit.java -Dsonar.sources=. sonar:sonar -Dsonar.host.url=http://52.152.224.93:9000'
                           //         }
                               //timeout(time: 10, unit: 'MINUTES') {
                                // waitForQualityGate abortPipeline: true
        //}
 //   }
//}           
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
