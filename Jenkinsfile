pipeline {
    agent any

    stages {
        stage('Echo') {
            steps {
                sh 'ls -l scripts/build.sh'
                sh 'chmod 777 scripts/build.sh'
                sh 'chmod 777 scripts/test.sh'
            }
        }
        stage('Install') {
            steps {
                sh "./scripts/build.sh"
            }
        }
        stage('Test') {
            steps {
                sh "./scripts/test.sh"
            }
        }
    }
}