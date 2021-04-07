pipeline {
    agent { docker { image 'python:3.8.6' } }

    environment {
        FOO = 'test'
    }

    stages {
        stage('build') {
            steps {
                echo "BRANCH_NAME = ${BRANCH_NAME}"
                echo "TAG_NAME = ${TAG_NAME}"
                echo "BUILD_TAG = ${BUILD_TAG}"
                echo "FOO = ${env.FOO}"
            }
        }
    }
}