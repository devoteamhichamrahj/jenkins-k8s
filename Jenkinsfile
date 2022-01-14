pipeline {
    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'python3 hello.py'
            }
        }
         stage('after') {
            steps {
                ls 
            }
        }
    }
}