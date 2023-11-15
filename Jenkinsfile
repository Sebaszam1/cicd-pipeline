pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'ls'
            }
        }
        stage('Install') {
            steps {
                sh "npm install"
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}