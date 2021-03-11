pipeline {
     environment {
    //login id/docker reposotory defined in Jenkins followe by repository name
    registry = "jimish22/avncommunication"
    //credential = Id given jenkins
    registryCredential = 'docker'
    dockerImage = ''
    //checked if any container is running with same name node-app container Id will store same & stage cleanup will close that container
    containerId = sh(script: 'docker ps -aqf "name=myApp"', returnStdout: true)
     build=$BUILD_NUMBER
  }  
    
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
        
            stage('Building image') {
     steps{
        script {
                      //will pisck registry from variable defined
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
                    stage('Push Image') {
     steps{
       script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
         
      stage('Cleanup') {
      when {
                not { environment ignoreCase: true, name: 'containerId', value: '' }
        }
      steps {
        sh 'docker stop ${containerId}'
        sh 'docker rm ${containerId}'
      }
    }
                  
      stage('Run Container') {
      steps {
   //     sh 'docker run --name=myapp -d -p 8081:8000 $registry:$BUILD_NUMBER &'
        sh 'docker run -d -p 8081:8080 --name=myApp $registry:$BUILD_NUMBER &'
      }
             }   

     stage('Remove Unused docker image') {
      steps{
          sh "docker rmi -f $registry:build-1
          //sh 'docker rmi $(docker images -q -f dangling=true)'
      }
    }

    }
}
