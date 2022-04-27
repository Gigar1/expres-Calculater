pipeline {
    agent none

    stages {
        stage ('build') {
            steps {
                npm install
            }
        }
        stages ('Unit-test') {
            steps {
                npm run unit-test
            }
        }
        stages('Integration-test') {
            steps {
                npm run integration-test
}
}
stages('e2e-tests'){
steps {
sh ./e2e-test.sh
            }
        }
    }
}
