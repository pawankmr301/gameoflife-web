#!groovy
pipeline {
  agent none
  options {
    buildDiscarder(logRotator(numToKeepStr: '20'))
    timeout(time: 30, unit: 'MINUTES')
  }
 }

stages {
  stage('Build') {
    steps {
      sh 'make build'
      }
   }

  stage('Copy') {
    steps {
      sh 'make copy'
    }
  }

  stage('Docker Build & run') {
    steps {
      sh 'make docker-run'
    }
  }

  stage('Docker Build & push') {
    steps {
      sh 'make docker-build'
    }
  }

}
