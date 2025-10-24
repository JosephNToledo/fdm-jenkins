pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'toledough'
        IMAGE_NAME = 'fdm-jenkins-py'
        DOCKERHUB_CREDENTIALS=credentials('docker-joe')
    }

    stages {
        stage('Your Name - Build Docker Image') {
            steps {
                script {
                    echo "Building Docker image"
                    sh 'docker build -t $DOCKERHUB_USER/$IMAGE_NAME:latest .'
                }
            }
        }
        stage('Your Name - Login to Dockerhub') {
            steps {
                script {
                    echo "Logging in to Docker Hub"
                    sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                    }
                }
            }
        }
        stage('Your Name - Push image to Dockerhub') {
            steps {
                script {
                    echo "Pushing image to Docker Hub"
                    sh 'docker push $DOCKERHUB_USER/$IMAGE_NAME:latest'
                }
            }
        }
    }
}
