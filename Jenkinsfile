pipeline {
    agent any

    stages {
        stage('Destroy existing') {

            steps {
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