pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'ls -l scripts/build.sh'
                sh 'chmod 777 scripts/build.sh'
            }
        }
        stage('Install') {
            steps {
                sh "sudo ./scripts/build.sh"
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}