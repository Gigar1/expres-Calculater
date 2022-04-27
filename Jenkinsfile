<<<<<<< HEAD
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
||||||| 6176124
pipeline{
    agent any
    stages{
        stage('Stage 1'){
            steps {
                echo 'Hello from pipeline SCM'
            }
        }
    }
}
=======

>>>>>>> 44c74dbc4957f4e68c86f7e6096bd7e1a558a446
