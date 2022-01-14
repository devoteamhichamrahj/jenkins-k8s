pipeline {
  environment {
    registry = "devohichamrahj/test"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any

  stages {
    stage('Build') {
          steps {
              echo 'building....'
          }
      }
      
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":latest"
        }
      }
    }
    stage('Deploy Image') {
      steps{
         script {
            docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
  }
}