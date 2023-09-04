pipeline {
    agent any
    environment {
      PATH = "$PATH:/foo/bar/flutter/bin"
    }    
    stages {
        stage('Setup') {
            steps {
                print "${env.PATH}"
            }    
        }
        
        stage('Build') {
            steps {
                sh "flutter doctor -v"
            }
        }        
    }
}
