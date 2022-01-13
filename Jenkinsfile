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
          docker.build registry + ":2"
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