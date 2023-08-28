pipeline {
    agent { label 'windows' }
    stages {
        stage('Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/swamy1175/stack.git'
                // Checkout your Flutter project from version control
            }
        }
         stage ('Flutter Doctor') {
            steps {
                bat "flutter doctor -v"
            }
        }
        stage ('Flutter Build APK') {
            steps {
                 bat "flutter build apk --split-per-abi"
            }
        }
    }

    post {
        always {
            // Clean up any build artifacts or temporary files
                            bat "flutter clean"
            cleanWs()
        }
    }
}
