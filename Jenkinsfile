pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout([branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/swamy1175/stack.git']]])
            }
        }
         stage('Test') {
                    steps {
                            sh 'flutter test'
                    }
                }
        stage('Build APK') {
            steps {
                sh 'flutter build apk'
            }
        }
    }
}