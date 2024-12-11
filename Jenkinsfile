pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo './gradlew build'
            }
        }
        stage('Test') {
            steps {
                echo './gradlew test'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/build/libs/*.jar', allowEmptyArchive: true
            junit '**/build/test-results/test/*.xml'
        }
    }
}

