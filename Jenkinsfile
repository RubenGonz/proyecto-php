pipeline {
    agent any
    stages {
        stage('construccion') {
            steps {
                sh 'docker build -t proyecto-php .'
                sh 'docker run -d --rm -p 8085:80 --name ContenedorPrueba proyecto-php'
            }
        }
        stage('testeo'){
            steps{
                sh 'wget http://localhost:8085/'
            }
        }
        stage('borarContenedor') {  
            steps {
                sh 'docker stop  ContenedorPrueba'  
            }
        }
    }
}
