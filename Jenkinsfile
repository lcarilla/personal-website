pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
            	sh 'echo ${imageTag}'
            	sh 'docker build -t localhost:8085/luis-website:${imageTag} .'
            }
        }
        stage('Push') {
			steps {
				sh 'docker login localhost:8085 -u ${dockerUser} -p ${dockerPw}'
				sh 'docker push localhost:8085/luis-website:${imageTag}'
			}
        }
    }
}