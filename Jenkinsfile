pipeline {
    agent any

    stages {
        stage('Install npm') {
            steps {
                sh 'npm install'
                }
            }
        stage('Unit-test') {
            steps {
                sh 'npm run unit-test'
                }
            }
        stage('Integration test') {
            when {
                anyOf{
                    branch 'develop'
                    branch 'main'
                }
            }
            steps {
                sh 'npm run integration-test'
	            }
	        }
	    stage('e2e-tests')
		    when{
		        branch 'main'
		    }
		ateps{
		        sh './e2e-test.sh'
            }
        }
    }
}
