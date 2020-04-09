pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'make build'
            }
        }
        stage('copy') {
            steps {
                sh 'make copy'
            }
        }
        stage('docker-run') {
            steps {
                sh 'make docker-run'
            }
        }
        stage('docker-build and push') {
            steps {
                sh 'make docker-build'
            }
        }
    }
}
