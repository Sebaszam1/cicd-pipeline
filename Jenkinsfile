pipeline {
    agent any

    parameters {
    choice choices: ['dev', 'prod'], name: 'select_environment'
    }

    environment {
    NODEJS_HOME = tool 'NodeJS'
    DOCKER_MAIN_IMAGE = 'nodemain:v1.0'
    DOCKER_DEV_IMAGE = 'nodedev:v1.0'
    }

    stages {
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