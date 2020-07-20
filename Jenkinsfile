pipeline{
    agent{
        label 'docker'
    }
    stages{
        stage('Build image'){
            steps{
                sh 'docker build --pull --rm -f "Dockerfile" -t nodejs:latest "."'
            }
        }
        stage('Run container'){
            steps{
                sh 'docker run -p 8081:8081 nodejs'
            }
        }
        stage('Pull from github'){
            steps{
                sh 'git clone https://github.com/luxgood/simple-node-app'
               
            }
        }
        stage('Run node server'){
            steps{
                sh 'node simple-node-app/server.js'
            }  
        }
    }
}