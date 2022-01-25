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
//
//      En el caso de querer borrar el contenedor tras testearlo pondremos:
//
//        stage('borarContenedor') {  
//            steps {
//                sh 'docker stop  ContenedorPrueba'  
//            }
//        }
    }
}
