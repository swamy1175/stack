pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
            git branch: 'main', url: 'https://github.com/swamy1175/stack.git'
                // Checkout your Flutter project from version control
            }
        }
        stage('BUILD') {
          steps {
                sh '''
                  #!/bin/sh
                      flutter build apk --debug
                    '''
                  }
                    }
    }
        
    post {
        always {
            // Clean up any build artifacts or temporary files
                            sh "flutter clean"
            cleanWs()
        }
    }
}
