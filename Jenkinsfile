pipeline {
    agent any
    environment {
        flutter = "/src/flutter_windows_2.10.4-stable/flutter"
    }
    stages {
        stage('Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/swamy1175/stack.git'
                // Checkout your Flutter project from version control
            }
        }
         stage ('Flutter Doctor') {
            steps {
                sh "flutter doctor -v"
            }
        }
         stage ('Flutter Dependency') {
            steps {
                 sh "flutter pub get"
            }
        }
        stage ('Flutter Build APK') {
            steps {
                 sh "flutter build apk --split-per-abi"
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
