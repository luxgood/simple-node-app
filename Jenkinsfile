pipeline{
    agent {
        docker{
            image 'node'
        }
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