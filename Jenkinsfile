pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/swamy1175/stack.git'
                // Checkout your Flutter project from version control
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install Flutter dependencies
                sh 'flutter pub get'
            }
        }

        stage('Unit Tests') {
            steps {
                // Run Flutter unit tests
                sh 'flutter test'
            }
        }

        stage('Build APK') {
            steps {
                // Build the APK for Android
                sh 'flutter build apk'
                archiveArtifacts artifacts: '**/build/app/outputs/flutter-apk/*.apk', allowEmptyArchive: true
            }
        }


    }

    post {
        always {
            // Clean up any build artifacts or temporary files
            cleanWs()
        }
    }
}