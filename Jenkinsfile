pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Installing Dependencies..'
            }
        }
        stage('Deploy') {
            steps {
      sh "chmod +x ./task1.sh"
                sh "./task1.sh"
     }
        }
    }
}
