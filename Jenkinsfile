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
         stage ('deliver-image'){
                when {
                 branch 'main'
              }
             steps {
               script {
                  echo 'Creating docker image......'
                bat 'docker build -t gigarkhalil/express-calculator:latest - < Dockerfile'
                bat 'docker tag gigarkhalil/express-calculator:latest thienvocampus/express-calculator:latest'
                echo 'Pushing to docker hub.....'
                bat 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                bat 'docker push gigarkhalil/express-calculator:latest'      
           }
         }
         }
         stage ('deploy-to-heroku'){
               when {
                branch 'main'
               }
          environment {
              HEROKU_API_KEY = credentials('heroku_token')
          }
          steps {
              bat 'heroku container:push web'
              bat 'heroku container:release web'
           }
       }
   }
}