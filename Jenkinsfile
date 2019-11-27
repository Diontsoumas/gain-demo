pipeline {
    agent any
    stages {
    	stage('Test') {
            steps {
                echo 'Jenkins will run this pipeline'
            }
        }
        stage('Build') {
            steps {
                sh './build.sh'
            }
        }
        stage('Package') {
            steps {
                sh './package.sh'
            }
        }
    }
    post {
        always {
            archiveArtifacts 'files.zip'
        }
    }
}