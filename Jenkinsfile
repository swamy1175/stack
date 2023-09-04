pipeline {
    agent any

    stages {
        stage('GIT PULL') {
            steps {
                git branch: "main", url: 'https://github.com/swamy1175/stack.git'
            }
        }
        stage('TEST') {
            steps withEnv(['PATH+EXTRA=$PATH\src\flutter_windows_2.10.4-stable\flutter\bin']) {
                sh 'flutter doctor -v'
            }
        }
    }
}
