pipeline {
    agent any
    environment {
        PORT = 5000
        version = v1
    }

    stages {
        stage('Destroy existing') {

            steps {
                sh 'chmod +x tear-down.sh'
                sh './tear-down.sh'
            }
        }
        stage('Build containers') {
            steps {
             
             sh 'docker-compose up -d --build'
             
            }
        }
    }
}