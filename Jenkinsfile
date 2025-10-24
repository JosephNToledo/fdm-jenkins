pipeline {
    agent any

    environment {
        DOCKERHUB_USER = 'toledough'
        IMAGE_NAME = 'fdm-jenkins-py'
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
                    withCredentials([usernamePassword(credentialsId: 'docker-joe', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                        sh 'echo $PASSWORD | docker login -u $USERNAME --password-stdin'
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
