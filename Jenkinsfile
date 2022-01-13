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
      stage('test') {
          steps {
              echo 'testing....'
          }
      }
  }
}