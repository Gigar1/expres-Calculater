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
                    branch 'develop'
                    branch 'main'
                }
            }
		
            steps {
                echo 'Integration test'
                bat 'npm run integration-test'
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
