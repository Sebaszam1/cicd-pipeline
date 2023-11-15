pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'npm version'
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