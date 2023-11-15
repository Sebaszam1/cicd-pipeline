pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'pwd'
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