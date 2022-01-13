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
        docker build -t 'devoteamhichamrahj/test:2'
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