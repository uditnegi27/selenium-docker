pipeline{

    agent any

    stages{

        stage('Build Jar'){
            steps{
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Build Image'){
            steps{
                sh 'docker build -t=negi22/selenium .'
            }
        }

        stage('Push Image'){
//             environment{
//                 DOCKER_HUB = credentials('dockerhub-creds')
//             }
            steps{
//                 sh 'echo ${DOCKER_HUB_PSW} | docker login -u ${DOCKER_HUB_USR} --password-stdin'
//                 sh 'docker push vinsdocker/selenium:latest'
//                 sh "docker tag vinsdocker/selenium:latest vinsdocker/selenium:${env.BUILD_NUMBER}"
//                 sh "docker push vinsdocker/selenium:${env.BUILD_NUMBER}"
                sh 'docker push negi22/selenium'
            }
        }

    }
//
//     post {
//         always {
//             sh 'docker logout'
//         }
//     }

}