pipeline {
    agent any
    stages {
        stage('build') {
            steps {
                sh 'docker build -t proyecto-php .'
                sh 'docker run -p 8085:8085 proyecto-php'
            }
        }
    }
}
