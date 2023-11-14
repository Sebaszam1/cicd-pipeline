pipeline {
    agent any

    tools {nodejs "node"}

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