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
                            url: 'https://github.com/ultramind/nextjs-portfolio',
                            credentialsId: 'jenkins-demo-creds'
                        ]]
                    })
                }
            }
        }
    }
}