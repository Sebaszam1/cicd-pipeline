pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'ECHO hola'
            }
        }
        stage('Install') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}