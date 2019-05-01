pipeline {
    agent any
    tools { 
        maven 'maven' 
        jdk 'java' 
    }
    stages {
        stage('build') {
            steps {
                sh 'mvn --version'
            }
        }
    }
}
