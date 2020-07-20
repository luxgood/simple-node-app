pipeline{
    agent {
        dockerfile true
        args '-p 8081:8081'
    }
    stages{
        stage('Pull from github'){
            steps{
                sh 'git clone https://github.com/luxgood/simple-node-app'
               
            }
        }
        stage('Run node server'){
            steps{
                sh 'node ./server.js'
            }  
        }
    }
}