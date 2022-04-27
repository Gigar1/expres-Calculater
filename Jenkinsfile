pipeline {
    agent none

    stages {
        stage('build') {
            steps {
                npm install
            }
        }
        stage('Unit-test') {
            steps {
                npm run unit-test
            }
        }
        stage('Integration-test') {
            steps {
                npm run integration-test
}
}
stage('e2e-tests'){
steps {
sh './e2e-test.sh'
            }
        }
    }
}
