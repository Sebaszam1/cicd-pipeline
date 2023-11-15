pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'ls -l build.sh'
                sh 'chmod +x build.sh'
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