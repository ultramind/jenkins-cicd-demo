pipeline {
    agent any

    stages {
        // checking out the code
        stage ("Checkout code"){
            steps {
                checkout ([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[
                        url: 'https://github.com/ultramind/jenkins-cicd-demo.git',
                        credentialsId: 'Jenkin-cicd-token'
                    ]]
                ])
            }
        }

        // building image stage
        stage ("Creating Docker Image..."){
            steps {
                sh 'docker build -t akachukwuu/jenkins-cicd-demo:v1 .'
            }
        }

        // pushing the Docker image to Docker hub
        stage ("pushing Image to Docker..."){
            steps{
                withDockerRegistry([credentialsId: 'DockerHub', url:'',]){
                    sh 'docker push akachukwuu/jenkins-cicd-demo:v1'
                }
            }
        }
    }

    post{
        success {
            echo "Pipeline Succeeded..."
        }
        failure{
            echo "Pipeline failed..."
        }
    }
}