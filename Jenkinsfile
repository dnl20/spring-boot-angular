pipeline {
    agent any
    stages {
        stage('Compile') {
            agent {
                docker {
                    image 'maven:3-alpine'
                    args ' --privileged -v /volume1/configs/.m2:/root/.m2'
                }
            }
            steps {
                sh 'mvn clean compile install'
            }
        }
        stage('Push to DockerHub') {
            steps {
                 withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                    sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                }
            }
        }
    }
}
