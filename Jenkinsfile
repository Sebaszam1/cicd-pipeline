pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'ls -l scripts/build.sh'
                sh 'chmod +x scripts/build.sh'
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