pipeline {
    agent: any

    stages {
        // checking out the code
        stage ("Checkout code"){
            steps {
                script {
                    //check out the code from the repository
                    Checkout ({
                        $class: 'Gitscm'
                        branches: [[name: '/*main']];
                        userRemoteConfigs: [[
                            url: 'https://github.com/ultramind/jenkins-cicd-demo.git',
                            credentialsId: 'Jenkin-cicd-token'
                        ]]
                    })
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