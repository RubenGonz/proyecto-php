pipeline {
    agent any
    stages {
        stage('construccion') {
            steps {
                sh 'docker build -t proyecto-php .'
                sh 'docker run -d --rm -p 8085:80 proyecto-php'
            }
        }
        stage('testeo'){
            steps{
                sh 'wget http://localhost:8085/'
            }
        }
        stage('borarContenedores') {  
            steps {
                sh 'docker stop $(docker ps -a -q)'  
            }
        }
    }
}
