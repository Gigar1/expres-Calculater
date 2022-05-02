pipeline {
    agent any

    stages {
        stage ('Install npm') {
            steps {
                echo 'Install npm'
                bat 'npm install'
            }
        }
        stage ('Unit-test') {
            steps {
                echo 'Unit-test'
                bat 'npm run unit-test'
            }
        }
        stage ('Integration test') {
            when {
                anyOf{
                    branch 'main'
                    branch 'develop'
                }
            }
            steps {
                echo 'Integration test'
                bat 'npm run integration-test'
            }
        }
    }
}
