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
                sh "./scripts/build.sh"
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}