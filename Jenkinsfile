pipeline {
    agent any

    stages {
        stage('Install') {
            steps {
                sh "npm install"
            }
        }
        stage('echo') {
            steps {
                sh "pwd"
                sh "ls"
            }
        }
        stage('Test') {
            steps {
                sh "npm test src/App.test.js"
            }
        }
    }
}