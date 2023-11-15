pipeline {
    agent any

    environment {
        DOCKER_MAIN_IMAGE = 'nodemain:v1.0'
        DOCKER_DEV_IMAGE = 'nodedev:v1.0'
    }

    stages {
        stage('Install') {
            steps {
                sh "npm install"
            }
        }
        stage('Test') {
            steps {
                sh "npm test src/App.test.js"
            }
        }
        stage('Build docker image') {
            steps {
                script {
                    if(env.BRANCH_NAME == 'main'){
                        sh "docker build -t ${DOCKER_MAIN_IMAGE}"
                    }else if(env.BRANCH_NAME == 'dev'){
                        sh "docker build -t ${DOCKER_DEV_IMAGE}"
                    }
                }
            }
        }

        stage('Stop and remove container'){
            steps {
                script {
                    sh 'docker stop $(docker ps -q) || true'
                    sh 'docker rm $(docker ps -a -q) || true'
                }
            }
        }

        stage('Stop and remove container'){
            steps {
                script {
                    if(env.BRANCH_NAME == 'main'){
                        sh "docker run -d --expose 3000 -p 3000:3000 ${DOCKER_MAIN_IMAGE}"
                    }else if(env.BRANCH_NAME == 'dev'){
                        sh "docker run -d --expose 3001 -p 3001:3001 ${DOCKER_DEV_IMAGE}"
                    }
                }
            }
        }

    }
}