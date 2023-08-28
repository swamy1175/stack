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
                        sh"${env.SOURCE}; dart pub get" 
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
