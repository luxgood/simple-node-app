pipeline{
    agent none
    stages{
        stage('Build image'){
            steps{
                sh 'docker build --pull --rm -f "Dockerfile" -t nodejs:latest "."'
            }
        }
        stage('Run container'){
            steps{
                sh 'docker run -it -p 8081:8081 nodejs'
            }
        }
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