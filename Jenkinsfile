pipeline {
  environment {
    registry = "wh1test/test-1"
    registryCredential = 'github1-wh1test'
  }
  agent { 
	label 'testpg'
  }
  stages {
    stage('Cloning Git') {
      steps {
        git 'https://github.com/wh1test/pj-inf.git'
      }
    }
    stage('Building image') {
      steps{
			sh 'cd pj-inf'
			sh 'docker-compose build'
      }
    }
    stage('Run Docker') {
      steps{
			sh 'docker-compose up -d --force-recreate'
      }
    }
  }
  post {
        success {
                slackSend (color: '#00FF00', message: "SUCCESSFUL: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
            }
            failure {
                slackSend (color: '#FF0000', message: "FAILED: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]' (${env.BUILD_URL})")
            }
  }
}

