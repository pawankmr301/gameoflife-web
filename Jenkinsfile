#!groovy
pipeline {
  agent none
  options {
    buildDiscarder(logRotator(numToKeepStr: '20'))
    timeout(time: 30, unit: 'MINUTES')
  }
 }

stages {
  stage('Start') {
    steps {
      sh 'make build'
      sh 'make copy'
      sh 'make docker-build'
      }
    }
 }
