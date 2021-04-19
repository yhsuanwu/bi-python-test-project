pipeline {
    agent { docker { image 'python:3.8.6' } }

    environment {
        FOO = 'test'
    }

    stages {
        stage('print names') {
            steps {
                script {
                    echo "FOO = ${env.FOO}"
                    echo "BRANCH_NAME = ${BRANCH_NAME}"
                    echo 'Run make test'
                    sh 'make test'
                }
            }
        }
    }
}