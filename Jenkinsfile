pipeline {
    agent any

    stages {
        stage ('build') {
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
	stage('Integration-test') {
            steps {
                echo 'Integration test'
                bat 'npm run integration-test'
            }
        }
    }
}
