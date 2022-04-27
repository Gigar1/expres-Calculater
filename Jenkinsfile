pipeline {
    agent none
    stages {
        stage ('Backend') {
            agent {
                 docker {image 'maven:3.8.1-adoptopenjdk-11'}
}        
            steps {
                echo 'Backend...'
                 sh 'mvn --version'
            }
        }
        stage('frontend') {
            agent { 
	       dockerfile true
                 }
            steps {
                echo 'Frontend'
                sh 'svn --version'
		sh 'node --version'
            }
        }
    }
}
