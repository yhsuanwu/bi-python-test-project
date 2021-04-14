pipeline {
    agent { docker { image 'python:3.8.6' } }

    environment {
        FOO = 'test'
    }

    stages {
        stage('print') {
            steps {
                script {
                    if (BRANCH_NAME ==~ /([12]\d{3}.(0[1-9]|1[0-2]).(0[1-9]|[12]\d|3[01]))/) {
                        echo "BRANCH_NAME = ${BRANCH_NAME}"
                        echo "TAG_NAME = ${TAG_NAME}"
                        echo 'Run make test'
                        sh 'make test'
                    } else {
                        echo "BRANCH_NAME = ${BRANCH_NAME}"
                        echo "FOO = ${env.FOO}"
                        echo 'Run make test'
                        sh 'make test'
                    }
                }
            }
        }
    }
}