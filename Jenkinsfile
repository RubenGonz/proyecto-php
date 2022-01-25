pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t proyecto-php .'
                sh 'docker run -d --rm -p 8085:80 proyecto-php'
            }
        }
        stage('Test'){
            steps{
                sh 'wget http://jenkins.rubengr.com:8085/'
            }
        }
    }
}
