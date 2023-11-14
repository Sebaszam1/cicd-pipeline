pipeline {
    agent any

    tools {NodeJS "NodeJS"}

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