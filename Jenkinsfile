pipeline {
    agent any
    stages {
        stage ('build') {
            steps {
                sh 'npm install'
            }
        }
        stage ('Unit-test') {
            steps {
                sh 'npm run unit-test'
            }
        }
	stage('Integration-test') {
            steps {
                sh 'npm run integration-test'

	        }
	    }
	stage('e2e-test'){
	    steps {
		sh './e2e-test.sh'
            }
        }
    }
}
