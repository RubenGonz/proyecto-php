pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t proyecto-php .'
                sh 'docker run -d --rm -p 8081:80 proyecto-php'
            }
        }
        stage('Test'){
            steps{
                sh 'wget http://localhost:8085/'
            }
        }
    }
}
