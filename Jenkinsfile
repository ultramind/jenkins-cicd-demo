pipeline {
    agent any

    stages {
        // checking out the code
        stage ("Checkout code"){
            steps {
                checkout ({
                    $class: 'GitSCM'
                    branches: [[name: '*/main']];
                    userRemoteConfigs: [[
                        url: 'https://github.com/ultramind/jenkins-cicd-demo.git',
                        credentialsId: 'Jenkin-cicd-token'
                    ]]
                })
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