pipeline {
    agent any
    environment {
  PATH = "$PATH:/foo/bar/flutter/bin"
}  

    stages {
        stage('GIT PULL') {
            steps {
                git branch: "main", url: 'https://github.com/swamy1175/stack.git'
            }
        }
        stage('TEST') {
            steps {
                sh 'flutter doctor -v'
            }
        }
    }
}
