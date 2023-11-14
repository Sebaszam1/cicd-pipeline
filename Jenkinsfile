pipeline {
    agent any

    environment {
        NODEJS_HOME = tool 'NodeJS' // Assumes 'NodeJS' is the label for the NodeJS tool in global tools configuration
        DOCKER_MAIN_IMAGE = 'nodemain:v1.0'
        DOCKER_DEV_IMAGE = 'nodedev:v1.0'
    }

    stages {
        stage('Print PATH') {
            steps {
                sh 'echo $PATH'
            }
}
        stage('Echo') {
            steps {
                sh 'ECHO hola'
            }
        }
        stage('Install') {
            steps {
                sh "${NODEJS_HOME}/bin/npm install"
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}